require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
p "----- TOTAL REVENUE -----"
p Store.sum("annual_revenue").to_f
p "----- AVERAGE REVENUE -----"
p Store.average("annual_revenue").to_f
p "----- NUMBER OF STORES WITH OVER $1,000,000 REVENUE -----"
p "There are " + Store.where("annual_revenue > ?", 1000000).count.to_s + " stores."

