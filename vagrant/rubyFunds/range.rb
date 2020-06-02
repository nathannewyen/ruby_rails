arr = ["dog","cat","tiger"]

puts arr.any? {|item| item.length >= 3}
puts arr.each {|item| print item, "--"}

puts (1..4).collect {|i| i*i }
puts (1..4).collect {"tiger"}
puts (0..20).min  
puts (0..20).max

puts ("a".."z").include?("g") 
puts ("a".."z").max 





puts Array.new(4, true)