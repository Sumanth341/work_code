class Queue
    def initialize
        @top=nil
        @length=0
    end
    def push(size)
        value=gets
        @top=Node.new(value,@top)
        @length=@length+1
        return if @length==size
        push(size)
    end
    def pop
        return if @top.nil?
        value=@top.value
        @top=@top.prev_obj
        self.pop
        puts value
    end
end
class Node
    attr_reader :value, :prev_obj
    def initialize(value,prev_obj)
        @value=value
        @prev_obj=prev_obj
    end
end
queue = Queue.new
puts "Queue size?"
queue_size = gets.to_i
puts "Enter queue data"
queue.push(queue_size)
puts "popped data as below.."
queue.pop
