#ifndef CS3100_SCHEDULER_SIMULATION_HPP
#define CS3100_SCHEDULER_SIMULATION_HPP

#include "CacheAlgorithm.hpp"
#include "Event.hpp"
#include "FifoReadyQueue.hpp"
#include "ReadyQueue.hpp"
#include "Task.hpp"
#include "ShortestJobFirstReadyQueue.hpp"
#include "ApproximateShortestJobFirstReadyQueue.hpp"
#include "FifoMemory.hpp"
#include "LeastRecentlyUsed.hpp"
#include "MostRecentlyUsed.hpp"
#include "SecondChance.hpp"
#include <memory>
#include <queue>
#include <vector>

namespace cs3100
{

  struct Device
  {
    bool busy;
    FifoReadyQueue queue;
  };

  struct SimulationParameters
  {
    int cpus;
    int devices;
    int cacheSize;
    float contextSwitchCost;
    float cacheMissCost;
    float maximumTimeSlice;
    int jobs;
    float meanTimeBetweenJobs;
    float stddevTimeBetweenJobs;
  };

  class Simulation
  {
  public:
    Simulation(SimulationParameters p,
               std::unique_ptr<ReadyQueue>&& r,
               std::unique_ptr<CacheAlgorithm>&& c)
      : queue(),
        ready(std::move(r)),
        cache(std::move(c)),
        jobs(),
        devices(p.devices),
        idleCpu(0),
        curTime(0.0f),
        parameters(p)
    {
      if(cs3100::ShortestJobFirstReadyQueue *SJF = dynamic_cast<cs3100::ShortestJobFirstReadyQueue*>(ready.get()))
      {  //references used: http://stackoverflow.com/questions/351845/finding-the-type-of-an-object-in-c  and  http://en.cppreference.com/w/cpp/language/dynamic_cast
         //  and http://en.cppreference.com/w/cpp/memory/unique_ptr
        SJF->associateSimulator(this);
      }
      if(cs3100::ApproximateShortestJobFirstReadyQueue *ASJF = dynamic_cast<cs3100::ApproximateShortestJobFirstReadyQueue*>(ready.get()))
      {
        ASJF->associateSimulator(this); 
      }
      if(cs3100::FifoMemory *FifoMemory = dynamic_cast<cs3100::FifoMemory*>(cache.get()))
      {
        FifoMemory->associateSimulator(this);
      }
      if(cs3100::LeastRecentlyUsed *LRU = dynamic_cast<cs3100::LeastRecentlyUsed*>(cache.get()))
      {
        LRU->associateSimulator(this);
      }
      if(cs3100::MostRecentlyUsed *MRU = dynamic_cast<cs3100::MostRecentlyUsed*>(cache.get()))
      {
        MRU->associateSimulator(this);
      }
      if(cs3100::SecondChance *second = dynamic_cast<cs3100::SecondChance*>(cache.get()))
      {
        second->associateSimulator(this);
      }
    }
    void run();
    float getEfficiency();
    size_t getJobs() { return jobs.size(); }
    float rawLatency(int);
    float adjustedLatency(int);
    float rawResponseTime(int);
    float adjustedResponseTime(int);
    float getJobTime(int);
    int getNumTasks(int);
    int getCacheSize() {return parameters.cacheSize;}

  private:
    void createJob();
    void scheduleJob();
    void scheduleIo(int);
    void jobDone(int, float);
    void ioDone(int, float);

    std::priority_queue<Event, std::vector<Event>, std::greater<Event>> queue;
    std::unique_ptr<ReadyQueue> ready;
    std::unique_ptr<CacheAlgorithm> cache;
    std::vector<Job> jobs;
    std::vector<Device> devices;
    int idleCpu;
    float curTime;
    const SimulationParameters parameters;
  };
}
#endif
