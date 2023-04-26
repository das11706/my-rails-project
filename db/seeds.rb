# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

comic_1 = Comic.create({ title: "Superman", description: "Man of steel leaps tall buildings in a single bound." })
comic_2 = Comic.create({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
comic_3 = Comic.create({ title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" })
comic_4 = Comic.create({ title: "Daredevil", description: "The man without fear." })


reader_1 = Reader.create({ name: "Agus", email: "ag@own.com" })
reader_2 = Reader.create({ name: "Carlos", email: "cl@twist.com" })
reader_3 = Reader.create({ name: "Albert", email: "al@unknown.com" })
reader_4 = Reader.create({ name: "Wayne", email: "way@sen.com" })