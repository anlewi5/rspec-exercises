module Calc
  class << self
    def add(*args)
      args.reduce(:+)
    end

    def sub(a, b)
      a - b
    end

    def mul(*args)
      args.reduce(:*)
    end

    def div(a, b)
      #note: the .to_f makes sure that floating point answers are returned
      a.to_f / b
    end

    def factors(n)
      (1..n).find_all { |factor| n % factor == 0 }
    end

    def prime(n)
      return false if n <= 1
      factors(n).length == 2
    end

    def primes_in_range(first, last)
      (first..last).find_all { |num| Calc.prime(num) }
    end
  end
end
