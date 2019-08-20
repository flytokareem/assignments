puts "size of the queue"
$size = gets.to_i
queue = []
index = 0
head = tail = 0
def push(queue,index)
    return if index == $size
    queue[index] = gets
    index = index+1
    push(queue,index)
   
end
push(queue,index)
def pop(queue,index)
    return if index == 0
    puts queue[index]
    index = index-1
    pop(queue,index)
    
end
pop(queue,index)
puts queue