# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

Cat.create!(birthdate: Date.new(2020, 10, 5), color: 'black', name: 'Sennacy', sex: 'F', description: 'App Academy Cat')

Cat.create!(birthdate: Date.new(2017, 9, 17), color: 'brown', name: 'Jimmy', sex: 'M', description: 'Fastest cat in the world!')

Cat.create!(birthdate: Date.new(1995, 12, 21), color: 'white', name: 'Nancy', sex: 'F', description: 'Prettiest cat. Likes fish.')

Cat.create!(birthdate: Date.new(2005, 4, 8), color: 'brown', name: 'Samantha', sex: 'F', description: 'Picky eater')