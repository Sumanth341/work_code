puts "Enter length of array"
length=gets.to_i
puts "Enter #{length} numbers"
a=Array.new
for i in 0..length-1
    a[i]=gets.to_i
end
def merge_sort(a)
    return a if a.count==1
    centre=a.count/2
    partition_merge(merge_sort(a.slice(0,centre)),merge_sort(a.slice(centre,centre+1)))
end
def partition_merge(x,y)
    i=-1
    arr=Array.new
    while x.any?||y.any?
        if x.any?&&y.any?&&x[0]<y[0]
            arr[i+=1]=x.shift 
        elsif x.any?&&y.any?
            arr[i+=1]=y.shift 
        elsif x.any?
            arr[i+=1]=x.shift
        elsif y.any?
            arr[i+=1]=y.shift 
        end
    end
    arr
end
puts "Sorted elements are..."
puts merge_sort(a)
