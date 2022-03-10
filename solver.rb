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

  def fizzbuzz(num)
    raise TypeError.new('value mmust be a number') if !num.is_a?(Integer) 
    if num % 3 == 0 && num % 5 == 0 
      'fizzbuzz'
    elsif num % 3 == 0
      'fizz' 
    elsif num % 5 == 0 
      'buzz' 
    else
     "#{num}"
    end
  end
end
