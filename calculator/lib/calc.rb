module Calc
  #idiom: ""
  class << self
    def add(*args)
      sum = 0
      args.each {
        |number|
        sum += number
      }
      return sum
    end

    def sub(a, b)
      a - b
    end

    def mul(*args)
      prod = 1
      args.each {
        |number|
        prod *= number
      }
      return prod
    end

    def div(a, b)
      #note: the .to_f makes sure that floating point answers are returned
      a.to_f / b
    end

    def factors(n)
      counter = n
      factors = [n]
      return "not a positive integer" if n <= 1
      loop {
        factors.push(counter - 1) if n % (counter - 1) === 0
        counter -= 1
        break if counter == 1
      }
      return factors.reverse
    end

    def prime(n)
      y = Calc.factors(n)
      if y.length === 2
        return true
      else
        return false
      end
    end

    def primes_in_range(first, last)
      prime_array = []
      (first..last).each {
        |num|
        prime_array.push(num) if Calc.prime(num) === true
      }
      return prime_array
    end
  end
end
