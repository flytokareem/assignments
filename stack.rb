# stack using array
array = []
puts "enter the size of stack"
size = gets.to_i
puts "enter values for array"
for i in 1..size
    array.push(gets)
end
for i in 1..size
    puts array.pop 
end

