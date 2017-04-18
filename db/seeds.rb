# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

date = Date.new(2001, 4, 3)
cat1 = Cat.create!(color: "Black", name: "Jack", sex: "M", description: "Poops a lot", birth_date: date)
cat2 = Cat.create!(color: "White", name: "Jane", sex: "F", description: "Cleans after Jack", birth_date: date)
