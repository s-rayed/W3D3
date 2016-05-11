require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "Store name: #{store.name}"
  puts "Store Annual Revenue: #{store.annual_revenue}"
end

# Way # 1

Store.all.select do |store|
  @new_stores = []
  if store.annual_revenue < 1000000 && store.womens_apparel == true
    @new_stores << store
    puts @new_stores
  end
end

# Method # 2

@new_stores1 =  Store.where('womens_apparel = ? AND annual_revenue < ?', true, 1000000)
@new_stores1.each do |store|
  puts store.name
  puts store.annual_revenue
end
# Order.having('SUM(price) > 30').group('user_id')

