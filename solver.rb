class Solver

  def factorial(num)
    if num < 0
      raise TypeError.new("number should not be a negative integer")
    end
    num == 0 ? 1 : num * factorial(num-1)
  end

  def reverse(word)
    word.reverse
  end
end