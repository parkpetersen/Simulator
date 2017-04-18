#ifndef CS3100_SCHEDULER_FIFO_MEMORY_HPP
#define CS3100_SCHEDULER_FIFO_MEMORY_HPP

#include "CacheAlgorithm.hpp"
#include <vector>
namespace cs3100
{
  class Simulation;

  class FifoMemory : public CacheAlgorithm
  {
  public:
    FifoMemory(); 
    void associateSimulator(Simulation* s);
    bool in(int) override;
    void load(int) override;

  private:
    std::vector<int> cache;
    std::size_t iterator = 0;
    Simulation* simulation;
  };
}

#endif
