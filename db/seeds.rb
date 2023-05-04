# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Contributor.destroy_all
Comic.destroy_all
Reader.destroy_all
Review.destroy_all

# Contributor.create!([{ name: "Stan Lee", title: "Spider-Man", email: "Lee@marvel.com" },
#   { name: "Frank Miller", title: "The Dark Knight", email: "FMiller@DC.com" },
#   { name: "Geoff Johns", title: "Green Lantern", email: "johns@DC.com" },
#   { name: "David Mack", title: "Daredevil", email: "mack@marvel.com" }])

contributor_1 = Contributor.create({ name: "Stan Lee", title: "Spider-Man", email: "Lee@marvel.com" })
contributor_2 = Contributor.create({ name: "Frank Miller", title: "The Dark Knight", email: "FMiller@DC.com" })
contributor_3 = Contributor.create({ name: "Geoff Johns", title: "Green Lantern", email: "johns@DC.com" })
contributor_4 = Contributor.create({ name: "David Mack", title: "Daredevil", email: "mack@marvel.com" })

comic_1 = contributor_1.comics.create!({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
comic_2 = contributor_2.comics.create!({ title: "The Dark Knight", description: "The caped protector of Gotham." })
comic_3 = contributor_3.comics.create!({ title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" })
comic_4 = contributor_4.comics.create!({ title: "Daredevil", description: "The man without fear." })

# Comic.create!([{ title: "Superman", description: "Man of steel leaps tall buildings in a single bound." },
# { title: "Spiderman", description: "Your friendly neighborhood spiderman." },
# { title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" },
# { title: "Daredevil", description: "The man without fear." }])

p "Created #{Comic.count} comics"

# comic_1 = Comic.create({ title: "Superman", description: "Man of steel leaps tall buildings in a single bound." })
# comic_2 = Comic.create({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
# comic_3 = Comic.create({ title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" })
# comic_4 = Comic.create({ title: "Daredevil", description: "The man without fear." })

# Reader.create!([{ name: "Agus", email: "ag@owners.com", password: "1234" },
# { name: "Carlos", email: "cl@twist.com" },
# { name: "Albert", email: "al@known.com" },
# { name: "Wayne", email: "way@sense.com" }])

reader_1 = Reader.create({ name: "Agus", email: "ag@own.com", password: "1234", password_confirmation: "1234" })
reader_2 = Reader.create({ name: "Carlos", email: "cl@twist.com", password: "2345", password_confirmation: "2345" })
reader_3 = Reader.create({ name: "Vicky", email: "viky@unknown.com", password: "3456", password_confirmation: "3456" })
reader_4 = Reader.create({ name: "Susie", email: "sus@sen.com", password: "4567", password_confirmation: "4567" })


# Review.create!([{ name: "Jimmy Lee", description: "The Dark Knight is a masterpiece."}, 
#   { name: "Amy Blake", description: "Green Lantern presents a great story from start to finish."}, 
#   { name: "Susan Moon", description: "Spider-man has amazing art and great story." }, 
#   { name: "Bob Cook", description: "Superman has a slow start but an amazing finish."}])


  review_1 = reader_1.reviews.create({ name: "Agus", description: "The Dark Knight is a masterpiece."}) 
  review_2 = reader_2.reviews.create ({ name: "Carlos", description: "Green Lantern presents a great story from start to finish."}) 
  review_3 = reader_3.reviews.create ({ name: "Vicky", description: "Spider-man has amazing art and great story." })
  review_4 = reader_4.reviews.create ({ name: "Susie", description: "Superman has a slow start but an amazing finish."})