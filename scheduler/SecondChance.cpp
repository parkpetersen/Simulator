#include "SecondChance.hpp"
#include <algorithm>
#include "Simulation.hpp"
#include <stdexcept>
namespace cs3100
{
  SecondChance::SecondChance()
  {
  }

  void SecondChance::associateSimulator(Simulation* s)
  {
    this->simulation = s;
  }

  bool SecondChance::in(int page)
  {
    for(auto i : cache)
    {
      if(i.pageNum == page)
      {
        i.marked = true;
        return true;
      }
    }
    return false;
  }

  void SecondChance::load(int page)
  {
    if(cache.size() < unsigned(this->simulation->getCacheSize()))
    {
     cs3100::SecondChance::page newPage;
     newPage.pageNum = page;
     this->cache.push_back(newPage);
    }
    else
    {
      while(cache[iterator].marked)
      {
        cache[iterator].marked = false;
        iterator = (iterator +1) % simulation->getCacheSize();
      }
      if(!cache[iterator].marked)
      {
        this->cache[iterator].pageNum = page;
        this->iterator = (iterator + 1) % this->simulation->getCacheSize();
      }
    }
  }
}
