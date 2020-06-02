# In this tab, we are going to build a simple version of the Enumerable module. The most important method in the Enumerable module is the each method. Once the each method is implemented, we can use that method to implement all of the other methods in the module. We are going to do the same by creating our own my_each method first. Then we can use this method to implement other magical methods in this module

module MyEnumerable
    def my_each
      for i in 0...self.length
        yield(self[i])
    end
  end
end

class Array
    include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40
  