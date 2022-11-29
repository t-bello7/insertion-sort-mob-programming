def insertion_sort(array)
  # write your code here
  for a in 1..array.length do 
    currPosition = a
    valueToInsert = array[a]
    while  valueToInsert != nil && (array[currPosition-1] > valueToInsert)
      array[currPosition] = array[currPosition - 1]
      currPosition = currPosition - 1
    end
    if valueToInsert != nil 
      array[currPosition] = valueToInsert
      puts "#{array} \n"
    end
  end
  array
end

insertion_sort([1, 3, 2]) 
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
