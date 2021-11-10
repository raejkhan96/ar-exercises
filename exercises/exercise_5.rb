require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@store_annual_sum = Store.sum(:annual_revenue)
@store_annual_avg = Store.average(:annual_revenue)

# stores that are generating more than $1M
# Range:  1,000,000 to infinity
@stores_greater_than_1m = Store.where(annual_revenue: 1000000..Float::INFINITY)

puts "Total revenue for all stores: #{@store_annual_sum}"
puts "Average revenue for all stores: #{@store_annual_avg}"
puts "Stores with annual revenue greater than $1M: #{@stores_greater_than_1m.count}"
