puts "Length of array?"
length = gets.to_i
puts "Enter #{length} numbers"
length = length - 1
a= Array.new
for i in 0..length
    a[i]=gets.to_i
end
for j in 0..length
    length=length-1
    for i in 0..length
        a[i],a[i+1]=a[i+1],a[i] if a[i]>a[i+1]
    end
end
puts "Sorted as below..."
puts a


