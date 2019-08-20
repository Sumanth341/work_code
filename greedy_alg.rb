puts "Enter an amount"
total = gets.to_i
key= [100,10,5,1]
hash=Hash.new
key.each do |a|
    hash[a]=total/a
    total=total-hash[a]*a
end
puts "Below is the denomination"
puts hash.reverse_each.to_h
