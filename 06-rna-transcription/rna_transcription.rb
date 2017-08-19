class Complement
  @dna_keys = {
                "G" => "C",
                "C" => "G",
                "T" => "A",
                "A" => "U"
  }

  @rna_keys = {
                "C" => "G",
                "G" => "C",
                "A" => "T",
                "U" => "A"
  }

  def self.of_dna(dna)
    str = ""
    letters = dna.split("")
    dna.length.times do |i|
      raise ArgumentError.new("DNA can only contain G, C, T, or A.") unless @dna_keys.include?(letters[i])
      str += @dna_keys[letters[i]]
    end
    return str
  end

  def self.of_rna(rna)
    str = ""
    letters = rna.split("")
    rna.length.times do |i|
      raise ArgumentError.new("DNA can only contain G, C, U, or A.") unless @rna_keys.include?(letters[i])
      str += @rna_keys[letters[i]]
    end
    return str
  end

end # end Complement class
