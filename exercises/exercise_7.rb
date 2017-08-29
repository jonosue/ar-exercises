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

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, :mens_apparel, :womens_apparel, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validate :must_carry_mens_or_womens_clothes

  def must_carry_mens_or_womens_clothes
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "You cannot make create a store that also does not carry men's apparel if it does not carry women's apparel.")
      errors.add(:womens_apparel, "You cannot make create a store that also does not carry women's apparel if it does not carry men's apparel.")
    end
  end

end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200, only_integer: true }
end

print 'Please provide a name for a new store > '
answer = gets.chomp.to_s

new_store = Store.create(name: answer)
p "IS THE NEW STORE VALID? " + new_store.valid?.to_s.upcase
p "----- REASONS WHY IT IS NOT VALID -----"
p "name errors: " + new_store.errors.details[:name].to_s
p "annual_revenue errors: " + new_store.errors.details[:annual_revenue].to_s
p "mens_apparel errors: " + new_store.errors.details[:mens_apparel].to_s
p "womens_apparel errors: " + new_store.errors.details[:womens_apparel].to_s

