# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Comic.destroy_all
Reader.destroy_all
Contributor.destroy_all

Comic.create!([{ title: "Superman", description: "Man of steel leaps tall buildings in a single bound." },
{ title: "Spiderman", description: "Your friendly neighborhood spiderman." },
{ title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" },
{ title: "Daredevil", description: "The man without fear." }])

# comic_1 = Comic.create({ title: "Superman", description: "Man of steel leaps tall buildings in a single bound." })
# comic_2 = Comic.create({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
# comic_3 = Comic.create({ title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" })
# comic_4 = Comic.create({ title: "Daredevil", description: "The man without fear." })

Reader.create!([{ name: "Agus", email: "ag@own.com" },
{ name: "Carlos", email: "cl@twist.com" },
{ name: "Albert", email: "al@unknown.com" },
{ name: "Wayne", email: "way@sen.com" }])

# reader_1 = Reader.create({ name: "Agus", email: "ag@own.com" })
# reader_2 = Reader.create({ name: "Carlos", email: "cl@twist.com" })
# reader_3 = Reader.create({ name: "Albert", email: "al@unknown.com" })
# reader_4 = Reader.create({ name: "Wayne", email: "way@sen.com" })


Contributor.create!([{ name: "Stan Lee", title: "Spider-Man", email: "Lee@marvel.com" },
  { name: "Frank Miller", title: "The Dark Knight", email: "FMiller@DC.com" },
  { name: "Geoff Johns", title: "Green Lantern", email: "johns@DC.com" },
  { name: "David Mack", title: "Daredevil", email: "mack@marvel.com" }])