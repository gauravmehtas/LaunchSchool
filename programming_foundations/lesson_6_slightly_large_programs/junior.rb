def junior(arr, delemeter = ',', seperation = 'or')
  if arr.size == 1
    puts "#{arr.join()}"
  else
    last = arr.pop
    puts "#{arr.join(delemeter)} #{seperation} #{last}"
  end
end
junior([1])
junior([1,2,3,4,5])
junior([1,2,3,4,5], ';')
junior([1,2,3,4,5], ';', 'and')