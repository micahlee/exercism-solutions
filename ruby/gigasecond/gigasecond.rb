class Gigasecond
  def self.from(origin)
    origin + 10**9
  end
end

module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end