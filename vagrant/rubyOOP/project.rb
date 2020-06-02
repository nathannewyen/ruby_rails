# Create a Project Class that has the following attributes: name, description. Also, create a instance method called elevator_pitch that will print out the name of the project and its description separated by a comma.

class Project
    attr_accessor :name, :description
    def initialize(name, description)
        @name = name
        @description = description
    end
    def elevator_pitch
        puts "#{@name}, #{@description}" 
    end 
end
  project1 = Project.new("Project 1", "Description 1")
  puts project1.name # => "Project 1"
  project1.elevator_pitch  # => "Project 1, Description 1"
  