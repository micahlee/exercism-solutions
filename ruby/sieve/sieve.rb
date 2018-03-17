class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    range = initial_range
    primes = []
    p = 2

    until range.empty?
      primes.push p
      range.reject! { |num| (num % p).zero? }
      p = range[0] unless range.empty?
    end

    primes
  end

  def initial_range
    @initial_range ||= (2..@max).to_a
  end
end

module BookKeeping
  VERSION = 1
end
