class Robot

  attr_reader :name

  def initialize
    give_name
  end

  def reset
    original = @name
    until @name != original
      give_name
    end
  end

  def give_name
    letters = ("A".."Z").to_a
    @name = letters.sample + letters.sample + rand(0..9).to_s + rand(0..9).to_s + rand(0..9).to_s
  end

end # end robot class
