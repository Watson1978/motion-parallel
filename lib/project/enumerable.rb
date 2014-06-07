class Integer

  def p_times(priority=:default, &block)
    queue = Dispatch::Queue.concurrent(priority)
    queue.apply(self, &block)
  end

end

module Enumerable

  def p_each(priority=nil, &block)
    ary = self.to_a
    ary.size.p_times(priority) do |i| 
      block.call(ary[i])
    end
    self
  end

  def p_each_index(priority=nil, &block)
    ary = self.to_a
    ary.size.p_times(priority) do |i|
      block.call(i)
    end
    self
  end

  def p_each_with_index(priority=nil, &block)
    ary = self.to_a
    ary.size.p_times(priority) do |i|
      block.call(ary[i], i)
    end
    self
  end

  def p_map(priority=nil, &block)
    ary = self.to_a
    result = Array.new(ary.size)
    ary.p_each_with_index(priority) do |obj, i|
      result[i] = block.call(obj)
    end
    result
  end
  alias :p_collect :p_map

end