# Implements to_roman method for integers
module RomanNumeral
  NUMERALS = {
    1000  => 'M',
    900   => 'CM',
    500   => 'D',
    400   => 'CD',
    100   => 'C',
    90    => 'XC',
    50    => 'L',
    40    => 'XL',
    10    => 'X',
    9     => 'IX',
    5     => 'V',
    4     => 'IV',
    1     => 'I'
  }.freeze

  # to_roman converts the integer called to its roman numeral string
  def to_roman
    remaining = self.clone
    roman_numeral = ''
    while remaining > 0
      # Loop through the Roman conversions to find
      # the first appropriate one available
      RomanNumeral::NUMERALS.each_pair do |key, value|
        next unless remaining - key >= 0

        roman_numeral << value
        remaining -= key
        break
      end
    end

    roman_numeral
  end
end

# Adds the RomanNumeral functionality to Integerss
class Integer
  include RomanNumeral
end

module BookKeeping
  VERSION = 2
end
