class Hamming

  def self.compute(string1, string2)
    diff = 0
    if string1.length == string2.length
      string1.length.times do |i|
        diff += 1 if string1.split("")[i] != string2.split("")[i]
      end
    else
      raise ArgumentError.new("The strings must be the same length")
    end
    return diff
  end

end # end Hamming class
