def print_box(string)
  length = ' '
  if string.length.odd? && string.length < 80
    length = string.length + 1
  elsif string.length.odd? && string.length > 80
    string.insert(-1, ' ')
    length = string.length
    string.insert(length/2, "\n")
    puts string
  elsif string.length.even? && string.length > 80
    length = string.length
    string.insert(length/2, "\n")
    puts string
  else
    length = string.length
  end
  puts '+-' + '-' * length + '-+'
  puts ('|'.ljust(length/2 + 4) + '|'.rjust(length/2))
  puts string.center(length)
  puts ('|'.ljust(length/2 + 4) + '|'.rjust(length/2))
  puts '+-' + '-' * length + '-+'
end

print_box("heasdfasdfasdf asdfas sdfsfgdsgdfgdfasdfasdfasfdadasfasfdasfasdsdafasdfsd asdkjfasdflkj")