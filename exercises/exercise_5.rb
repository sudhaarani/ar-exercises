require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales.
#  Hint: Chain together where and size (or count) Active Record methods.

@total= Store.sum(:annual_revenue) #using symbol is the prefered one
# the symbol :annual_revenue represents the name of the attribute 
# symbols are used instead of strings to efficiently convey specific, meaningful values.

# @total= Store.sum("annual_revenue") -> it works too

puts @total

@avg= Store.average(:annual_revenue)
puts @avg

@stores_has_1M= Store.where("annual_revenue >= ?", 1000000).count
puts @stores_has_1M