class Complement
  def self.of_dna(dna)
    dna.chars
       .map { |char| mappings[char] || (break []) }
       .join('')
  end

  def self.mappings
    {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end