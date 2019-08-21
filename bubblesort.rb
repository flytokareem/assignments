puts "Length of array?"
length = gets.to_i
values = []
puts "Enter #{length} numbers"
for i in 0..length-1
    values[i]=gets.to_i
end
def sort(values)
    length = values.size - 2
    swapped = true
      while swapped
      swapped = false
        0.upto(length) do |i|
        if values[i] > values[i+1]
          values[i], values[i+1] = values[i+1], values[i]
          swapped = true
        end
      end
    end
  
    return values
  end
  
 puts sort(values)
  