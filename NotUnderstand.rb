module CalculateYears
  require 'Time'
  def years_old
    time_now=Time::now
    day_of_birth=Time.parse(@day_of_birth)
    yo=time_now.year-day_of_birth.year
    yo = yo - 1 if (time_now.month < day_of_birth.month )
    p yo
  end
end
class User
  include CalculateYears
  attr_accessor :name, :day_of_birth

  # def initialize name, day_of_birth
  #   @name = name
  #   @day_of_birth=day_of_birth
  # end
end
class Wine
  include CalculateYears
  def initialize name, day_of_birth
    @name = name
    @day_of_birth = day_of_birth
  end
end
dan = User.new
dan.name 'Dan'
dan.day_of_birth '1994-05-28'
