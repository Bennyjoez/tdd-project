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
    reversed_word = ""
    for i in word.length - 1 downto 0
      reversed_word += word[i]
    end
  
    return reversed_word
  end
end
