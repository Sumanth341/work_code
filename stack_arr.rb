# stack with array
class Stack
    attr_accessor :stack_size, :head_node
    def initialize
        @arr = Array.new
        @head_node = 0
    end
    def push(data)
        return puts "stack is full" if @head_node==@stack_size
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
stack.stack_size=gets.to_i
input="nil"
until input == "exit"
    stack.push(input[-1]) if input.chop == "push"
    stack.pop if input == "pop"
    puts stack.head_node if input =="index"
    puts "enter push/pop/exit/index"
    input = gets.chomp
end
