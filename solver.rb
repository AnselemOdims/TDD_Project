class Solver
  def factorial(num)
    raise TypeError, 'number should not be a negative integer' if num.negative?

    num.zero? ? 1 : num * factorial(num - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    raise TypeError, 'value mmust be a number' unless num.is_a?(Integer)

    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
