#queue with array
class Queue
    attr_accessor :tail, :length
    def initialize 
        @head=0
        @tail=0
        @arr=Array.new
    end
    def push(input)
        return puts "queue is full" if @length==@tail
        @arr[@tail]=input.to_i
        @tail=@tail+1
    end
    def pop(index)
        return puts "queue is empty" if @head==@tail
        return if index == @tail
        puts "#{@arr[index]}" if index == 0
        @tail=@tail-1 if index == 0
        @arr[index]=@arr[index+1]
        pop(index+1)
    end
end
queue=Queue.new
input = "nil"
puts "Length of queue?"
queue.length=gets.to_i
until input == "exit"
    queue.push(input[-1]) if input.chop == "push"
    queue.pop(0) if input == "pop"
    puts queue.tail if input =="index"
    puts "enter push/pop/exit/index"
    input = gets.chomp
end

        
