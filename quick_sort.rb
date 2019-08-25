puts "Enter length of array"
length=gets.to_i
puts "Enter #{length} numbers"
arr=Array.new
for i in 0..length-1
    arr[i]=gets.to_i
end
def quick_sort(arr,first,last)
    return arr if first>=last
    reference_element=arr[last]
    reference_index=last
    i=first
    for k in first..last-1
        if arr[i]>reference_element
            arr.insert(last,arr.delete_at(i)) 
            reference_index-=1
        elsif
            i=i+1
        end
    end
    quick_sort(arr,first,reference_index-1)
    quick_sort(arr,reference_index+1,last)
end
puts "Sorted elements are..."
puts quick_sort(arr,0,length-1)

