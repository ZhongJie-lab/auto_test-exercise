def is_leap_year?(year)
  # if year % 4 == 0
  #    if year % 100 == 0
  #      if year % 400 == 0
  #        return true
  #      else
  #        return false
  #      end
  #    else
  #       return true
  #    end
  # else
  #    return false
  # end
  year % 400 == 0 || ( year % 4 == 0 && year % 100 != 0)
end
