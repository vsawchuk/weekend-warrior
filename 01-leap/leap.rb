# def leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0
#       return year % 400 == 0
#     else
#       return true
#     end
#   else
#     return false
#   end
# end


# alternate solution
# return year % 4 == 0 && (year % 100 != 0 || year % 400 ==0)
  # create methods with names for each of these boolean expressions

def div_by_4?(year)
  year % 4 == 0
end

def div_by_100?(year)
  year % 100 == 0
end

def div_by_400?(year)
  year % 400 == 0
end

def leap_year?(year)
  return div_by_4?(year) && (!div_by_100?(year) || div_by_400?(year))
end
