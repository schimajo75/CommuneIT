# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Consultant.create(name: "Aaron Aaronson", grade: 6)
Consultant.create(name: "Brenda Baker", grade: 5)
Consultant.create(name: "Charlie Chesterfield", grade: 5)
Consultant.create(name: "Danny Danielson", grade: 6)
Consultant.create(name: "Erica Enright", grade: 7)

Client.create(first_name: "Fritz", last_name: "Froderick", email: "fritzy@aol.com", age: 67)
Client.create(first_name: "Mel", last_name: "Diggler", email: "digdoo@hotmail.com", age: 71)
Client.create(first_name: "Pearl", last_name: "Baily", email: "pbails@aol.com", age: 68)
Client.create(first_name: "Cathy", last_name: "Bromide", email: "broom678@yahoo.com", age: 70)
Client.create(first_name: "Paul", last_name: "Sullivan", email: "sully4eva@aol.com", age: 67)