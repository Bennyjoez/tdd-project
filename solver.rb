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
  
  def fizzbuzz(n)
    if n % 3 == 0 and n % 5 == 0
      return "fizzbuzz"
    elsif n % 3 == 0
      return "fizz"
    elsif n % 5 == 0
      return "buzz"
    else
      return n.to_s
    end
  end
end
