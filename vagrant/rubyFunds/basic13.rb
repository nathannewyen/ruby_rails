# Print 1-255
for i in 1..255
    puts i
end

# Print odd numbers between 1-255
for i in 1..255
    if i % 2 == 0
        puts i
    end 
end

# Print Sum
sum = 0
for i in 1..255
    sum = sum + i 
	puts "New number: #{i} Sum: #{sum} "
end

# Iterating through an array
x =  [1,3,5,7,9,13]
for i in x 
    puts i 
end

# Find Max
arr =  [-3, -5, -7,19]
def find_max(arr)
    max = arr[0]
    for i in arr
        if i > max
            max = i
        end
    end
    return max 
end

puts find_max(arr)

# Find Average
arr = [2, 10, 3]
def find_avg(arr)
    sum = 0
    for i in arr
        sum += i
    end
    avg = sum / arr.length 
    return avg
end

puts find_avg(arr)

# Array with Odd Numbers
def odd_nums()
    y = []
    for i in 1..255
        if i % 2 != 0
            y.push(i)
        end
    end
    return y
end
puts odd_nums().inspect

# Greater Than Y
array = [1, 3, 5, 7] 
y = 3
def greater_than_y(array,y)
    count = 0
    for i in array
        if i > y
            count += 1
        end
    end
    return count
end

puts greater_than_y(array,y)

# Square the values
arr = [1, 5, 10, -2]
puts arr.collect {|i| i*i}

# Eliminate Negative Numbers
arr = [1, 5, 10, -2]
puts arr.collect { |i| i < 0? 0:i }

# Max, Min, and Average
x = [1, 5, 10, -2]
sum = 0
x.each { |i| sum += i }
avg =  sum / x.length
puts [x.min, x.max, avg]

# Shifting the Values in the Array
arr = [1, 5, 10, 7, -2]
arr.shift
arr.push(0)
puts arr

# Number to String
arr = [-1,-3,2]
puts arr.collect { |i| i < 0? 'Dojo':i } 