class Squares
  def initialize(num)
    @num = num
  end

  def sum_of_squares
    @sum_of_squares ||= (1..@num).sum { |num| num**2 }
  end

  def square_of_sum
    @square_of_sum ||= (1..@num).sum**2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end