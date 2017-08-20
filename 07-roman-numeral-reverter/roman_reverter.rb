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

  def self.reverter(roman)
    letters = roman.split("")
    value = 0
    if letters.length == 1
      value = @translate[letters[0]]
    else
      letters.length.times do |i|
        if @translate[letters[i+1]] > @translate[letters[i]]
        else
          if @translate[letters[i-1]] < @translate[letters[i]] && i != 0
            value += @translate[letters[i]] - @translate[letters[i-1]]
          else
            value += @translate[letters[i]]
          end
        end
      end
    end
    return value
  end

end
