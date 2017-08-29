require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where(womens_apparel: true)

p "----- LIST OF MEN'S STORES -----"
@mens_stores.each do |store|
  p "Store Name: " + store.name + ". Annual Revenue: " + store.annual_revenue.to_s
end

p "----- LIST OF WOMEN'S STORES -----"
@womens_stores.each do |store|
  if store.annual_revenue < 1000000
    p "Store Name: " + store.name + ". Annual Revenue: " + store.annual_revenue.to_s
  end
end
