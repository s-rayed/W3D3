require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
@store5 = Store.create(name: "test", annual_revenue: 300000, mens_apparel: false, womens_apparel: false)

puts @store5.errors.full_messages

puts "What would you like to name your new store"
input = gets.chomp
@store6 = Store.create(name: input.to_s)

puts @store6.errors.full_messages