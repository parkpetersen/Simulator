#include "ShortestJobFirstReadyQueue.hpp"
#include "Simulation.hpp"
#include <stdexcept>
namespace cs3100
{
  

  ShortestJobFirstReadyQueue::ShortestJobFirstReadyQueue()
  {

  }
  void ShortestJobFirstReadyQueue::add(int job)
  {
    size_t iterator = 0;
    bool inserted = false;
    while(!inserted && iterator < queue.size())
    {
      if (simulation->getJobTime(job) < simulation->getJobTime(iterator))
      {
        queue.insert(queue.begin()+iterator,job);
        inserted = true;
      }
      else
        iterator++;
    }
    if (iterator == queue.size() && !inserted)
      queue.push_back(job);    
  }

  int ShortestJobFirstReadyQueue::next()
  {
    if (queue.empty()) return -1;
    auto result = queue.front();
    queue.erase(queue.begin());
    return result;
  }

  void ShortestJobFirstReadyQueue::associateSimulator(Simulation* s)
  {
    this->simulation = s;
  }

}
