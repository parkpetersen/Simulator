#include "LeastRecentlyUsed.hpp"
#include "Simulation.hpp"
#include <algorithm>

namespace cs3100
{
  LeastRecentlyUsed::LeastRecentlyUsed()
  {
  }

  void LeastRecentlyUsed::associateSimulator(Simulation* s)
  {
    this->simulation = s;
  }

  bool LeastRecentlyUsed::in(int page)
  {
    auto location = std::find(this->cache.begin(), this->cache.end(), page);
    if(location != this->cache.end())
    {
      auto distance = std::distance(cache.begin(), location);
      cache.erase(cache.begin() + distance);
      cache.push_back(page);
      return true; 
    }
    else
      return false;
  }

  void LeastRecentlyUsed::load(int page)
  {
    if(this->cache.size() < unsigned(this->simulation->getCacheSize()))
    {
      this->cache.push_back(page);
    }
    else
    {
      cache.erase(cache.begin());
      cache.push_back(page);
    }
  }
}
