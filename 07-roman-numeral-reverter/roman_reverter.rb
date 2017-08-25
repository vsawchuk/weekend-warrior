class Roman

  @translate = {
                "I" => 1,
                "V" => 5,
                "X" => 10,
                "L" => 50,
                "C" => 100,
                "D" => 500,
                "M" => 1000

  }

  @translate.default = 0

  def self.current_lower_than_next?(arr, index)
    return @translate[arr[index+1]] > @translate[arr[index]]
  end

  def self.current_higher_than_previous?(arr, index)
    return @translate[arr[index-1]] < @translate[arr[index]] && index != 0
  end

  def self.calculate_value(arr, index)
    if self.current_higher_than_previous?(arr, index)
      return @translate[arr[index]] - @translate[arr[index-1]]
    end
    return @translate[arr[index]]
  end

  def self.reverter(roman)
    letters = roman.split("")
    value = 0
    return @translate[letters[0]] if letters.length == 1
    letters.length.times do |i|
      next if self.current_lower_than_next?(letters, i)
      value += self.calculate_value(letters, i)
    end
    return value
  end

end
