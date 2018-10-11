def stag(str)
  counter = 0
  new_string = ''
  state = false
  str.chars.each do |x|
    if counter.even? == state
      new_string += x.upcase
    elsif counter.odd? == state
      new_string += x.downcase
    else
      new_string +=  x
    end
    counter += 1
  end
  new_string
end

p stag('I Love Launch School!')
p stag('AlL_CaPs')
p stag('ignore 77 the 444 numbers')

