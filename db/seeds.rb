require_relative('../models/student')
require_relative('../models/houses')
require('pry')

Student.delete_all()
House.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 15
})

student2 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 15
})

house1 = House.new(
  {
    "name" => "Gryffindor"
  }
)

house2 = House.new(
  {
    "name" => "Slytherin"
  }
)
house3 = House.new(
  {
    "name" => "Ravenclaw"
  }
)
house4 = House.new(
  {
    "name" => "Hufflepuff"
  }
)

student1.save
student2.save

house1.save
house2.save
house3.save
house4.save

binding.pry
nil
