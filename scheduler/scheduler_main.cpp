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
  int numJobs = 10;
  int cacheSize = 10;

  std::cout<<"Always in Cache"<<std::endl;
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

  std::cout<<"Fifo"<<std::endl;
  cs3100::SimulationParameters fifo1;
  fifo1.cpus = 4;
  fifo1.devices = 2;
  fifo1.cacheSize = cacheSize;
  fifo1.contextSwitchCost = 0.1f;
  fifo1.cacheMissCost = 1.0f;
  fifo1.maximumTimeSlice = std::numeric_limits<float>::max();
  fifo1.jobs = numJobs;
  fifo1.meanTimeBetweenJobs = 10.0f;
  fifo1.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::FifoReadyQueue, cs3100::FifoMemory>(fifo1);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/fifo1.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/fifo1.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;

  std::cout<<"Least Recently Used"<<std::endl;
  cs3100::SimulationParameters LRU;
  LRU.cpus = 4;
  LRU.devices = 2;
  LRU.cacheSize = cacheSize;
  LRU.contextSwitchCost = 0.1f;
  LRU.cacheMissCost = 1.0f;
  LRU.maximumTimeSlice = std::numeric_limits<float>::max();
  LRU.jobs = numJobs;
  LRU.meanTimeBetweenJobs = 10.0f;
  LRU.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::FifoReadyQueue, cs3100::LeastRecentlyUsed>(LRU);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/LRU.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/LRU.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;


  std::cout<<"Most Recently Used"<<std::endl;
  cs3100::SimulationParameters MRU;
  MRU.cpus = 4;
  MRU.devices = 2;
  MRU.cacheSize = cacheSize;
  MRU.contextSwitchCost = 0.1f;
  MRU.cacheMissCost = 1.0f;
  MRU.maximumTimeSlice = std::numeric_limits<float>::max();
  MRU.jobs = numJobs;
  MRU.meanTimeBetweenJobs = 10.0f;
  MRU.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::FifoReadyQueue, cs3100::MostRecentlyUsed>(MRU);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/MRU.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/MRU.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;

  std::cout<<"Second Chance"<<std::endl;
  cs3100::SimulationParameters sc;
  sc.cpus = 4;
  sc.devices = 2;
  sc.cacheSize = cacheSize;
  sc.contextSwitchCost = 0.1f;
  sc.cacheMissCost = 1.0f;
  sc.maximumTimeSlice = std::numeric_limits<float>::max();
  sc.jobs = numJobs;
  sc.meanTimeBetweenJobs = 10.0f;
  sc.stddevTimeBetweenJobs = 2.0f;
  // create simulation with specific parameters and algorithms
  runSimulation<cs3100::FifoReadyQueue, cs3100::SecondChance>(sc);
  std::cout<<"Average Latency: "<<std::accumulate(latencies.begin(), latencies.end(), 0.0f)/sc.jobs<<std::endl;
  std::cout<<"Average Response Time: "<<std::accumulate(responseTimes.begin(), responseTimes.end(), 0.0f)/sc.jobs<<std::endl;
  latencies.clear();
  responseTimes.clear();
  std::cout<<"---------------------------------------------------------------------------------------"<<std::endl;

/*
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
*/
}
