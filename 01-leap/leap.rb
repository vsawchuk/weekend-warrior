def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      return year % 400 == 0
    else
      return true
    end
  else
    return false
  end
end
