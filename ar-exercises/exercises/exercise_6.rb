require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 20)
@store1.employees.create(first_name: "Bob", last_name: "Johnson", hourly_rate: 60)
@store1.employees.create(first_name: "Mark", last_name: "Markington", hourly_rate: 50)
@store2.employees.create(first_name: "Samuel", last_name: "Samuelson", hourly_rate: 30)
@store2.employees.create(first_name: "Boris", last_name: "Diaw", hourly_rate: 40)
@store2.employees.create(first_name: "Kyle", last_name: "Brof", hourly_rate: 80)
