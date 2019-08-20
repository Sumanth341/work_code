# stack wihout arrray
class Stack
    def initialize
        @top=nil
    end
    def push(value)
        @top=Node.new(value,@top)
    end
    def pop
        raise "Stack is empty" if @top.nil?
        value=@top.value
        @top=@top.prev_obj
        value
    end
end
class Node
    attr_reader :value, :prev_obj
    def initialize(value,prev_obj)
        @value=value
        @prev_obj=prev_obj
    end
end
stack = Stack.new
puts "Stack size?"
stack_size = gets.to_i
puts "Enter stack data"
for i in 1..stack_size
    stack.push(gets)
end
puts "popped data as below.."
for i in 1..stack_size
    puts stack.pop
end



        
