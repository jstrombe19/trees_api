# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rosewood = Tree.create({name: "Indian Rosewood", scientific_name: "Dalbergia Sissoo", height: 65})
oak = Tree.create({name: "English Oak", scientific_name: "Quercus Robur", height: 85})
austrian_pine = Tree.create({name: "Austrian Pine", scientific_name: "Pinus Nigra", height: 55})
black_walnut = Tree.create({name: "Black Walnut", scientific_name: "Juglans Nigra", height: 65})