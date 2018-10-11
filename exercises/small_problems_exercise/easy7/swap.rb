def swap(str)
  a = str.chars.map do |x|
    if x == x.upcase
      x.downcase
    elsif x == x.downcase
      x.upcase
    end      
  end
  a.join("")
end

p swap('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'