# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Inventory.create(item_name: 'onion', quantity_available: 90)
Inventory.create(item_name: 'chilli', quantity_available: 50)
Inventory.create(item_name: 'salt', quantity_available: 60)
Inventory.create(item_name: 'tomato', quantity_available: 40)
Inventory.create(item_name: 'spices', quantity_available: 20)
Inventory.create(item_name: 'chicken', quantity_available: 30)
Inventory.create(item_name: 'noodles', quantity_available: 60)
Inventory.create(item_name: 'eggs', quantity_available: 150)
Inventory.create(item_name: 'brinjal', quantity_available: 90)
Inventory.create(item_name: 'yogurt', quantity_available: 20)
Inventory.create(item_name: 'capsicum', quantity_available: 50)
Inventory.create(item_name: 'pepper', quantity_available: 20)
Inventory.create(item_name: 'spinach', quantity_available: 30)
Inventory.create(item_name: 'cheese', quantity_available: 20)
Inventory.create(item_name: 'olive oil', quantity_available: 100)
Inventory.create(item_name: 'sause', quantity_available: 90)
Inventory.create(item_name: 'peas', quantity_available: 40)
Inventory.create(item_name: 'broccoli', quantity_available: 78)
Inventory.create(item_name: 'cauliflower', quantity_available: 76)
Inventory.create(item_name: 'carrot', quantity_available: 66)
Inventory.create(item_name: 'rice', quantity_available: 150)
Inventory.create(item_name: 'gulab jamun flour', quantity_available: 82)
Inventory.create(item_name: 'sugar', quantity_available: 82)
Inventory.create(item_name: 'corn flour', quantity_available: 94)
Inventory.create(item_name: 'ghee', quantity_available: 82)

Recipe.create(recipe: 'spicy noodles', ingredients: 'noodles',required_qty_in_gm:'6')
Recipe.create(recipe: 'spicy noodles', ingredients: 'spices',required_qty_in_gm:'1')
Recipe.create(recipe: 'spicy noodles', ingredients: 'tomato',required_qty_in_gm:'3')
Recipe.create(recipe: 'spicy noodles', ingredients: 'capsicum',required_qty_in_gm:'2')
Recipe.create(recipe: 'spicy noodles', ingredients: 'chilli',required_qty_in_gm:'1')
Recipe.create(recipe: 'spicy noodles', ingredients: 'pepper',required_qty_in_gm:'1')
Recipe.create(recipe: 'spicy noodles', ingredients: 'cauliflower',required_qty_in_gm:'2')

Recipe.create(recipe: 'fried rice', ingredients: 'rice',required_qty_in_gm:'7')
Recipe.create(recipe: 'fried rice', ingredients: 'spices',required_qty_in_gm:'2')
Recipe.create(recipe: 'fried rice', ingredients: 'tomato',required_qty_in_gm:'4')
Recipe.create(recipe: 'fried rice', ingredients: 'capsicum',required_qty_in_gm:'2')
Recipe.create(recipe: 'fried rice', ingredients: 'chilli',required_qty_in_gm:'1')
Recipe.create(recipe: 'fried rice', ingredients: 'pepper',required_qty_in_gm:'1')
Recipe.create(recipe: 'fried rice', ingredients: 'cauliflower',required_qty_in_gm:'2')

Recipe.create(recipe: 'gulab jamun', ingredients: 'gulab jamun',required_qty_in_gm:'5')
Recipe.create(recipe: 'gulab jamun', ingredients: 'sugar',required_qty_in_gm:'2')
Recipe.create(recipe: 'gulab jamun', ingredients: 'ghee',required_qty_in_gm:'4')

Order.create(customer_name: 'jack', ordered_dish: 'fried rice', Quntatity_of_each_item:'1', no: '2')
Order.create(customer_name: 'john', ordered_dish: 'gulab jamun', Quntatity_of_each_item:'2', no: '2')

Chef.create(customer_name: 'jack', ordered_dish: 'fried rice', quantity:'1')
Chef.create(customer_name: 'john', ordered_dish: 'gulab jamun', quantity:'2')

Price.create(dish_name: 'fried rice', price: '25', description:'spicy fried rice', preparation_time: '20m')
Price.create(dish_name: 'Noodles', price: '30', description:'spicy Noodles', preparation_time: '25m')
Price.create(dish_name: 'Pasta', price: '15', description:'Special Pasta', preparation_time: '15m')

Customer.create(dish_name: 'fried rice', price: '25', description:'spicy fried rice')
Customer.create(dish_name: 'Noodles', price: '30', description:'spicy Noodles')
Customer.create(dish_name: 'Pasta', price: '15', description:'Special Pasta')






