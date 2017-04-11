#include "ApproximateShortestJobFirstReadyQueue.hpp"
#include "Simulation.hpp"
#include <stdexcept>
namespace cs3100
{
  
  ApproximateShortestJobFirstReadyQueue::ApproximateShortestJobFirstReadyQueue()
  {
    
  }

  void ApproximateShortestJobFirstReadyQueue::add(int job)
  {
    size_t iterator = 0;
    bool inserted = false;
    auto totalTime = 0.0;
    size_t i = 0;
    while(i < queue.size())
    {
      totalTime+=this->simulation->getJobTime(queue[i]);
      i++;
    }
    auto average = totalTime/i;
    while(!inserted && iterator < queue.size())
    {
      if(average < this->simulation->getJobTime(queue[iterator]))
      {
        queue.insert(queue.begin()+iterator, job);
        inserted = true;
      }
      else
        iterator++;
    }
    if(iterator == queue.size() && !inserted)
      queue.push_back(job);
  }

  int ApproximateShortestJobFirstReadyQueue::next()
  {
    if (queue.empty()) return -1;
    auto result = queue.front();
    queue.erase(queue.begin());
    return result;
  }

  void ApproximateShortestJobFirstReadyQueue::associateSimulator(Simulation* s)
  {
    this->simulation = s; 
  }
}

