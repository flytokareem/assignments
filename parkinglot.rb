puts "enter no of rows needed in parking area"
$parking_rows = gets.to_i
puts "enter no of columns needed in parking area"
$parking_columns = gets.to_i
$parking_area = Array.new($parking_rows){Array.new($parking_columns,0)}
p $parking_area
def push(name,vin,color)
    for i in 0..$parking_rows-1
        for j in 0..$parking_columns-1
            if $parking_area[i][j]==nil
                $parking_area[i][j]={"name"=>name,"vin"=>vin,"color"=>color} if $parking_area[i][j]==nil
                j=$parking_columns
                break
            end
        end
        break if j==$parking_columns
    end
end
def remove(i,j)
    return puts "no such postion in parking" if i>$parking_rows-1||j>$parking_columns-1
    return puts "no car at that index" if $parking_area[i][j]==0
    puts "#{$parking_area[i][j]["name"]} is removed"
    $parking_area[i][j]=0
end
def info(i,j)
    return puts "no such postion in parking" if i>$parking_rows-1||j>$parking_columns-1
    return puts "no car at that index" if $parking_area[i][j]==0
    puts $parking_area[i][j]
end
def car_count(parking_area)
    k=0
    for i in 0..$parking_rows-1
        for j in 0..$parking_columns-1
            k=k+1 if $parking_area[i][j]!=0
        end
    end
    puts "#{k} cars"
end
def color_count(color)
    k=0
    for i in 0..$parking_rows-1
        for j in 0..$parking_columns-1
            k=k+1 if $parking_area[i][j]!=0&&a[i][j]["color"]==color
        end
    end
    puts "#{k} #{color}s"
end
index = "nil"
until index=="exit"
    if index=="push"
        if $parking_area[$parking_rows-1][$parking_columns-1]==0
            puts "Give name,vin,color"
            push(gets.chomp,gets.chomp,gets.chomp)
        elsif
            puts "Parking is full"
        end
    end
    if index=="remove"
        puts "Give $parking_rows and $parking_columns"
        remove(gets.to_i-1,gets.to_i-1)
    end
    if index=="info"
        puts "Give section and partition"
        info(gets.to_i-1,gets.to_i-1)
    end
    car_count($parking_area) if index=="car count"
    if index=="color count"
        puts "what is the color?"
        color_count(gets.chomp,)
    end
    puts "push/remove/info/car count/color count"
    index=gets.chomp
end