array = Array.new

puts 'Enter numbers for the array. When done just enter without any input: '

loop do
  yn = gets.chomp
  break if yn == ''
  array << yn
end

array.each_with_index do |e, i|
  next if i == 0
  j = i

  while j > 0
    if array[j] < array[j-1]
      prev_element = array[j-1]
      array[j-1] = array[j]
      array[j] = prev_element
      j = j - 1
    else
      break	  
  	end
  end
end

puts array
