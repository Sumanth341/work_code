puts "Enter a string"
input = gets.chomp
length = input.length
hash = Hash.new(0)
for a in 0..length-1
    hash[input[a]] = hash[input[a]] + 1
end
puts hash
