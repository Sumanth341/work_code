puts "Enter Section count"
$section_count=gets.to_i
puts "Enter Partitions count"
$partition_count=gets.to_i
$a=Array.new($section_count){Array.new($partition_count,0)}
def push(name,vin,color)
    for i in 0..$section_count-1
        for j in 0..$partition_count-1
            if $a.dig(i,j)==0
                $a[i][j]={name: name,vin: vin,color: color} if $a[i][j]==0
                j=$partition_count
                break
            end
        end
        break if j==$partition_count
    end
end
def remove(i,j)
    return puts "no such postion in parking" if i>$section_count-1||j>$partition_count-1
    return puts "no car at that index" if $a.dig(i,j)==0
    puts "#{$a.dig(i,j,:name)} is removed"
    $a[i][j]=0
end
def info(i,j)
    return puts "no such postion in parking" if i>$section_count-1||j>$partition_count-1
    return puts "no car at that index" if $a.dig(i,j)==0
    puts $a.dig(i,j)
end
def car_count
    k=0
    for i in 0..$section_count-1
        for j in 0..$partition_count-1
            k=k+1 if $a.dig(i,j)!=0
        end
    end
    puts "#{k} cars"
end
def color_count(color)
    k=0
    for i in 0..$section_count-1
        for j in 0..$partition_count-1
            k=k+1 if $a.dig(i,j)!=0&&$a.dig(i,j,:color)==color
        end
    end
    puts "#{k} #{color}s"
end
index = "nil"
until index=="exit"
    if index=="push"
        if $a.dig($section_count-1,$partition_count-1)==0
            puts "Give name,vin,color"
            push(gets.chomp,gets.chomp,gets.chomp)
        elsif
            puts "Parking is full"
        end
    end
    if index=="remove"
        puts "Give section and partition"
        remove(gets.to_i-1,gets.to_i-1)
    end
    if index=="info"
        puts "Give section and partition"
        info(gets.to_i-1,gets.to_i-1)
    end
    car_count if index=="car count"
    if index=="color count"
        puts "what is the color?"
        color_count(gets.chomp)
    end
    puts "push/remove/info/car count/color count"
    index=gets.chomp
end
