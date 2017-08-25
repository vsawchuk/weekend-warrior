require 'faker'

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
    @name = Faker::Base.regexify(/^[A-Z]{2}\d{3}$/)
  end

end # end robot class
