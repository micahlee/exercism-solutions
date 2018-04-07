class Raindrops
  def self.convert(num)
    result = ''
    result += 'Pling' if (num % 3).zero?
    result += 'Plang' if (num % 5).zero?
    result += 'Plong' if (num % 7).zero?

    result.empty? ? num.to_s : result
  end
end

module BookKeeping
  VERSION = 3
end