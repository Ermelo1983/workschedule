# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: ENV["EMAIL"], password: ENV["PASSWORD"], department: ENV["DEPARTMENT"], role: ENV["ROLE"], floor: ENV["FLOOR"], full_time: ENV["FULL_TIME"], first_name: ENV["FIRST_NAME"], last_name: ENV["LAST_NAME"])
