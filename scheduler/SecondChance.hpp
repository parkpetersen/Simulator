#ifndef CS3100_SCHEDULER_SECOND_CHANCE_HPP
#define CS3100_SCHEDULER_SECOND_CHANCE_HPP

#include "CacheAlgorithm.hpp"
#include <vector>
namespace cs3100
{
  class Simulation;

  class SecondChance : public CacheAlgorithm
  {
  public:
    SecondChance(); 
    void associateSimulator(Simulation* s);
    bool in(int) override;
    void load(int) override;
    struct page
    {
      int pageNum;
      bool marked = false;
    };

  private:
    std::vector<page> cache;
    std::size_t iterator = 0;
    Simulation* simulation;
  };
}

#endif
