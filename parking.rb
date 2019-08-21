puts "Enter Section count"
$section_count=gets.to_i
puts "Enter Partitions count"
$partition_count=gets.to_i
a=Array.new($section_count){Array.new($partition_count,0)}
def push(name,vin,color,a)
    for i in 0..$section_count-1
        for j in 0..$partition_count-1
            if a[i][j]==0
                a[i][j]={"name"=>name,"vin"=>vin,"color"=>color} if a[i][j]==0
                j=$partition_count
                break
            end
        end
        break if j==$partition_count
    end
end
def remove(i,j,a)
    return puts "no such postion in parking" if i>$section_count-1||j>$partition_count-1
    return puts "no car at that index" if a[i][j]==0
    puts "#{a[i][j]["name"]} is removed"
    a[i][j]=0
end
def info(i,j,a)
    return puts "no such postion in parking" if i>$section_count-1||j>$partition_count-1
    return puts "no car at that index" if a[i][j]==0
    puts a[i][j]
end
def car_count(a)
    k=0
    for i in 0..$section_count-1
        for j in 0..$partition_count-1
            k=k+1 if a[i][j]!=0
        end
    end
    puts "#{k} cars"
end
def color_count(color,a)
    k=0
    for i in 0..$section_count-1
        for j in 0..$partition_count-1
            k=k+1 if a[i][j]!=0&&a[i][j]["color"]==color
        end
    end
    puts "#{k} #{color}s"
end
index = "nil"
until index=="exit"
    if index=="push"
        if a[$section_count-1][$partition_count-1]==0
            puts "Give name,vin,color"
            push(gets.chomp,gets.chomp,gets.chomp,a)
        elsif
            puts "Parking is full"
        end
    end
    if index=="remove"
        puts "Give section and partition"
        remove(gets.to_i-1,gets.to_i-1,a)
    end
    if index=="info"
        puts "Give section and partition"
        info(gets.to_i-1,gets.to_i-1,a)
    end
    car_count(a) if index=="car count"
    if index=="color count"
        puts "what is the color?"
        color_count(gets.chomp,a)
    end
    puts "push/remove/info/car count/color count"
    index=gets.chomp
end
