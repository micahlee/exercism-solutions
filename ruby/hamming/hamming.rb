class Hamming

  def self.compute(first, second)
    raise ArgumentError, 'Input strings are not the same length' if first.length != second.length

    count = 0

    (0..first.length-1).each do |idx|
      count += 1 if first[idx] != second[idx]
    end

    count
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end