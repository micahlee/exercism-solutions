require 'set'

class Pangram
  def self.pangram?(input)
    all_chars = ('a'..'z').to_set
    input_chars = input.downcase.chars
    remaining_chars = all_chars - input_chars
    remaining_chars.empty?
  end
end

module BookKeeping
  VERSION = 6
end