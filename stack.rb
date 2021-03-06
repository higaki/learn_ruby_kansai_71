class Stack
  class EmptyStackError <RuntimeError; end
  
  def initialize
    @stack = []
  end

  def empty?
    @stack.empty?
  end

  def push(val)
    @stack.push val
  end

  def pop
    raise EmptyStackError if empty?
    @stack.pop
  end

  def size
    @stack.size
  end
end
