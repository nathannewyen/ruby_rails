#  Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

arr = [3,5,1,2,7,9,8,13,25,32]
puts arr.reduce(:+) #use reduce method
puts arr.find_all {|i| i>10}.inspect #use find_all method

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

array = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
puts array.shuffle.inspect
puts array.find_all {|i| i.length > 5}.inspect

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.

arr = ('a'..'z').to_a
puts arr.shuffle!.inspect
puts arr[0].inspect
puts arr[24].inspect
puts arr[0].include?('a') || arr[0].include?('e') || arr[0].include?('i') || arr[0].include?('o') || arr[0].include?('u')

# Generate an array with 10 random numbers between 55-100.
arr = []
puts 10.times { arr << rand(55..100) }

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
arr = []
10.times { arr << rand(55..100) }
puts arr.sort.inspect
puts arr.max
puts arr.min


# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
str = ""
5.times { str << (65+rand(26)).chr }
puts str

# Generate an array with 10 random strings that are each 5 characters long
str = ""
array = []
10.times do
    5.times { str << (65+rand(26)).chr }
    array << str
end
puts array

