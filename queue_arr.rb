puts "queue size?"
$queue_size = gets.to_i
arr=Array.new
def push(node,arr)
    return arr if node==$queue_size
    arr[node]=gets.to_i
    push(node+1,arr)
end
def pop(node,arr)
    return arr if node==$queue_size
    puts arr[node]
    pop(node+1,arr)
end
puts "enter #{$queue_size} numbers"
push(0,arr)
puts "popped data as below..."
pop(0,arr)