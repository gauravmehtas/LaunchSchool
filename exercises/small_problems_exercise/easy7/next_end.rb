def repeat(string)
  length = string.split.length
  if length <= 1
    puts "String Empty or Just One word, lets start again..."
    string = gets.chomp
    repeat(string)
  else
    puts string.split[length / 2]
  end
end

repeat('how are you doing this morning')