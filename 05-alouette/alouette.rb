class Alouette

  attr_reader :refrain, :end_of_verse, :new_lines

  @refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
  @end_of_verse = [
                    "Alouette!\n",
                    "Alouette!\n",
                    "A-a-a-ah"
                  ]
  @new_lines = [
                 "la tête",
                 "le bec",
                 "les yeux",
                 "le cou",
                 "les ailes",
                 "les pattes",
                 "la queue",
                 "le dos",
                 "le dos"
  ]

  def self.lines_for_verse(versenum)
    lines = []
    (versenum + 1).times do |i|
      lines.push("Et " + @new_lines[versenum - i] + "!")
    end
    return lines
  end

  def self.verse(versenum)
    lines = self.lines_for_verse(versenum)
    str = ""
    lines.each do |each_line|
      2.times do |i|
        str += "Je te plumerai " + @new_lines[versenum] + ".\n" if lines.first == each_line
      end
      2.times do |i|
        str += each_line + "\n"
      end
    end
    @end_of_verse.each do |each_line|
      str += each_line
    end
    return str
  end

  def self.sing
    str = @refrain
    8.times do |i|
      str += "\n\n" + self.verse(i) + "\n\n" + @refrain
    end
    return str
  end

end # end Alouette class

puts Alouette.sing
