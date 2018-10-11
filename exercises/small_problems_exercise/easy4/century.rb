# Problem 

  # Write a method that takes a year as input and returns the century. The return value should 
  # be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

  # New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Understand the problem

  # Input
    # Integer as argument to a method

  # Output
    # return string which is a century number with appropriate suffix

# Example
  
  # Year 56 is 1st Centuary

# Data Structure
  
  # Number as input
  # String as output
  # array of suffixes

# Algorithm

  # if argument <= 100 it's 1st century
  # else argument.length >= 3, argument / 100 + 1 is the century
  # if century.last number ends on 1 suffix st, 2 suffix nd, 3 suffix rd else suffix th

# Code


def century(year)

  if year <= 100
    puts "Year #{year} is 1st Century."
  elsif year.to_s.length >= 3
    cen = year / 100 + 1
    if cen == 11 || cen == 12 || cen == 13
      puts "Year #{year} is #{cen}th century."
    elsif cen.to_s.chars.last == '1'
      puts "Year #{year} is #{cen}st century."
    elsif cen.to_s.chars.last == '2'
      puts "Year #{year} is #{cen}nd century."
    elsif cen.to_s.chars.last == '3'
      puts "Year #{year} is #{cen}rd century."
    else
      puts "Year #{year} is #{cen}th centuary"
    end
  end
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
