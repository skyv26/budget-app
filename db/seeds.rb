# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seeding to database initialized ....'

aakash = User.create!(name: 'Aakash', email: 'aakash@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
kumar = User.create!(name: 'Kumar', email: 'kumar@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
verma = User.create!(name: 'Verma', email: 'verma@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
puts 'User Created Successfully !'

repair = Category.create!(name: 'Repair', icon: 'https://img.icons8.com/ios-filled/512/maintenance.png', author: aakash)
bus_fair = Category.create!(name: 'Bus Fair', icon: 'https://img.icons8.com/ios-filled/512/bus.png', author: kumar)
courses = Category.create!(name: 'Courses', icon: 'https://img.icons8.com/external-others-phat-plus/512/external-courses-online-courses-outline-others-phat-plus-29.png', author: verma)
grocery = Category.create!(name: 'Grocery', icon: 'https://img.icons8.com/pastel-glyph/512/ingredients--v1.png', author: aakash)
puts 'Category Created Successfully !'

udemy_react = Expense.create!(name: 'React Udemy Course', amount: 12.11, author: verma)
linux_edx = Expense.create!(name: 'Linux Server EDX course', amount: 100.75, author: verma)
tomatos = Expense.create!(name: 'Bought Tomato', amount: 1.99, author: aakash)
fan = Expense.create!(name: 'Fan Conductor Repair', amount: 4.99, author: aakash)
punjab_to_usa = Expense.create!(name: 'Travel from Punjab to USA', amount: 1850.54, author: kumar)
pizza_material = Expense.create!(name: 'Pizza Materials', amount: 7.80, author: aakash)
masala = Expense.create!(name: 'Indian Masala', amount: 14.25, author: aakash)
puts 'Expense Created Successfully !'

udemy_react_course = ExpenseCategory.create!(expense: udemy_react, category: courses)
linux_edx_course = ExpenseCategory.create!(expense: linux_edx, category: courses)
tomatos_grocery = ExpenseCategory.create!(expense: tomatos, category: grocery)
fan_repair = ExpenseCategory.create!(expense: fan, category: repair)
punjab_to_usa_fair = ExpenseCategory.create!(expense: punjab_to_usa, category: bus_fair)
pizza_material_grocery = ExpenseCategory.create!(expense: pizza_material, category: grocery)
masala_grocery = ExpenseCategory.create!(expense: masala, category: grocery)
puts 'Expense Category Map Created Successfully !'

puts 'Data seeded successfully to database !!'
