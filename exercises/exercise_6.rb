require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Jonathan", last_name: "Sue", hourly_rate: 1000000)
@store1.employees.create(first_name: "Courtney", last_name: "Felix (Chu)", hourly_rate: 5)
@store1.employees.create(first_name: "Matt", last_name: "Hounslow", hourly_rate: 24)
@store1.employees.create(first_name: "Alex", last_name: "Hache", hourly_rate: 18)
@store1.employees.create(first_name: "Edmond", last_name: "Lee", hourly_rate: 1)
@store2.employees.create(first_name: "Ricky", last_name: "Lee", hourly_rate: 8)
@store2.employees.create(first_name: "Wing", last_name: "Leung", hourly_rate: 111)
@store2.employees.create(first_name: "Matt", last_name: "Willcox", hourly_rate: 234)
@store2.employees.create(first_name: "Simon", last_name: "Chan", hourly_rate: 75)
@store2.employees.create(first_name: "Hannah", last_name: "Kim", hourly_rate: 221)

