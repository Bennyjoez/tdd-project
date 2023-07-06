class Solver
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