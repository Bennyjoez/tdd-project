class Solver
  def factorial(num)
    raise ArgumentError, 'num should be an integer' if num.negative?

    factorial = 1
    return factorial if num.zero?

    (1..num).each do |i|
      factorial *= i
    end

    factorial
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? and (num % 5).zero?
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
