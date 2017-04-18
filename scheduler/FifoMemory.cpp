#include "FifoMemory.hpp"
#include <algorithm>
#include "Simulation.hpp"
#include <stdexcept>
namespace cs3100
{
  FifoMemory::FifoMemory()
  {
  }

  void FifoMemory::associateSimulator(Simulation* s)
  {
    this->simulation = s;
  }

  bool FifoMemory::in(int page)
  {
    if(std::find(this->cache.begin(), this->cache.end(), page) != this->cache.end())
    {
      return true;
    }
    else
      return false;
  }

  void FifoMemory::load(int page)
  {
    if(cache.size() < unsigned(this->simulation->getCacheSize()))
    {
     this->cache.push_back(page);
    }
    else
    {
      this->cache[iterator] = page;
      this->iterator = (iterator + 1) % this->simulation->getCacheSize();
    }
  }
}
