class Solver
<<<<<<< HEAD
    def factorial(n)
        if n < 0
          raise ArgumentError("Not a positive interger")
        end
      
        if n == 0
          return 1
        end
      
        factorial = 1
        for i in 1..n
          factorial *= i
        end
      
        return factorial
    end
    def reverse(word)
        return word.reverse
    end
end
=======
  def factorial(num)
    raise ArgumentError, 'num should be an integer' if num.negative?

    factorial = 1
    return factorial if num.zero?

    (1..num).each do |i|
      factorial *= i
    end

    factorial
  end
end
>>>>>>> 7fece95d159add3d03604936ce0bf82790556401
