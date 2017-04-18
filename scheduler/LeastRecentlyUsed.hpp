#ifndef CS3100_SCHEDULER_LEAST_RECENTLY_USED_HPP
#define CS3100_SCHEDULER_LEAST_RECENTLY_USED_HPP

#include "CacheAlgorithm.hpp"
#include <vector>

namespace cs3100
{
  class Simulation;

  class LeastRecentlyUsed : public CacheAlgorithm
  {
  public:
    LeastRecentlyUsed();
    void associateSimulator(Simulation* s);
    bool in(int) override;
    void load(int) override;

  private:
    std::vector<int> cache;
    std::vector<int> recentList;
    Simulation* simulation;
  };

}

#endif 
