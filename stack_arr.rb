# stack with array and command line arguments
class Stack
    attr_accessor :stack_size
    def initialize
        @arr = Array.new
        @head_node = 0
    end
    def push(data)
        raise "stack is full" if @head_node==@stack_size
        @arr[@head_node]=data
        @head_node+=1
    end
    def pop
        return puts "stack is empty" if @head_node==0
        puts @arr[@head_node-1]
        @head_node-=1
    end
end
stack=Stack.new
puts "stack size?"
stack.stack_size=$stdin.gets.to_i
ARGV.each do|a|
    stack.push(a)
end
puts "popped elements as below.."
for i in 1..stack.stack_size
    stack.pop
end
