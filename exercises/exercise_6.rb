require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 3)
# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Tom", last_name: "Hanks", hourly_rate: 60)
@store2.employees.create(first_name: "Elon", last_name: "Musk", hourly_rate: 60)
@store2.employees.create(first_name: "Charles", last_name: "Dickens", hourly_rate: 60)