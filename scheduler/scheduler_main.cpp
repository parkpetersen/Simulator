#include "AlwaysInCache.hpp"
#include "FifoReadyQueue.hpp"
#include "Simulation.hpp"
#include <iostream>
#include <limits>
#include <numeric>

std::vector<float> latencies, responseTimes;

namespace
{
  void report(cs3100::Simulation& s)
  {
    /*TODO create a report based on the results in s*/
    std::cout << "Efficiency : " << s.getEfficiency() << std::endl;
    std::cout << "Task\tLatency\tResponseTime" << std::endl;
    for (size_t i = 0; i < s.getJobs(); ++i)
    {
      std::cout << i << "\t" << s.rawLatency(i) << "\t" << s.rawResponseTime(i)
                << std::endl;
      latencies.push_back(s.rawLatency(i));
      responseTimes.push_back(s.rawResponseTime(i));
    }
  }

  template <typename ReadyType, typename CacheType>
  void runSimulation(cs3100::SimulationParameters const& p)
  {
    cs3100::Simulation s(
      p, std::make_unique<ReadyType>(), std::make_unique<CacheType>());
    s.run();
    report(s);
  }
}

int main()
{
  int numJobs = 500;
  std::cout<<"Fifo"<<std::endl;
  /*TODO vary the simulation parameters to get richer results for your report*/
  cs3100::SimulationParameters fifo;
  fifo.cpus = 4;
  fifo.devices = 2;
  fifo.cacheSize = 0;
  fifo.contextSwitchCost = 0.1f;
  fifo.cacheMissCost = 1.0f;
  fifo.maximumTimeSlice = std::numeric_limits<float>::max();
  fifo.jobs = numJobs;
  fifo.meanTimeBetweenJobs = 10.0f;
  fifo.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::FifoReadyQueue, cs3100::AlwaysInCache>(fifo);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/fifo.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/fifo.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;

  std::cout<<"Round Robin"<<std::endl;
  cs3100::SimulationParameters roundRobin;
  roundRobin.cpus = 4;
  roundRobin.devices = 2;
  roundRobin.cacheSize = 0;
  roundRobin.contextSwitchCost = 0.1f;
  roundRobin.cacheMissCost = 1.0f;
  roundRobin.maximumTimeSlice = 5.0f;
  roundRobin.jobs = numJobs;
  roundRobin.meanTimeBetweenJobs = 10.0f;
  roundRobin.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::FifoReadyQueue, cs3100::AlwaysInCache>(roundRobin);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/roundRobin.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/roundRobin.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;

  std::cout<<"Shortest Job First"<<std::endl;
  cs3100::SimulationParameters SJF;
  SJF.cpus = 4;
  SJF.devices = 2;
  SJF.cacheSize = 0;
  SJF.contextSwitchCost = 0.1f;
  SJF.cacheMissCost = 1.0f;
  SJF.maximumTimeSlice = std::numeric_limits<float>::max();
  SJF.jobs = numJobs;
  SJF.meanTimeBetweenJobs = 10.0f;
  SJF.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::ShortestJobFirstReadyQueue, cs3100::AlwaysInCache>(SJF);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/SJF.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/SJF.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;

  std::cout<<"Approximate Shortest Job First"<<std::endl;
  cs3100::SimulationParameters ASJF;
  ASJF.cpus = 4;
  ASJF.devices = 2;
  ASJF.cacheSize = 0;
  ASJF.contextSwitchCost = 0.1f;
  ASJF.cacheMissCost = 1.0f;
  ASJF.maximumTimeSlice = std::numeric_limits<float>::max();
  ASJF.jobs = numJobs;
  ASJF.meanTimeBetweenJobs = 10.0f;
  ASJF.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::ApproximateShortestJobFirstReadyQueue, cs3100::AlwaysInCache>(ASJF);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/ASJF.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/ASJF.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;

}
