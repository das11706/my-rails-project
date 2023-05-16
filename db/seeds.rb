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

contributor_1 = Contributor.create({ name: "Stan Lee", title: "Spider-Man", email: "Lee@marvel.com", password: "1234", password_confirmation: "1234" })
contributor_2 = Contributor.create({ name: "Frank Miller", title: "Batman The Dark Knight", email: "FMiller@DC.com", password: "2345", password_confirmation: "2345" })
contributor_3 = Contributor.create({ name: "Geoff Johns", title: "Green Lantern", email: "johns@DC.com", password: "3456", password_confirmation: "3456" })
contributor_4 = Contributor.create({ name: "David Mack", title: "Daredevil", email: "mack@marvel.com", password: "4567", password_confirmation: "4567" })
contributor_5 = Contributor.create({ name: "Jack Kirby", title: "The Mighty Thor", email: "kirby@marvel.com", password: "5678", password_confirmation: "5678" })
contributor_6 = Contributor.create({ name: "Chris Claremont", title: "Uncanny X-men", email: "claremont@marvel", password: "6789", password_confirmation: "6789" })

# contributor_1 = Contributor.create({ name: "Stan Lee", title: "Spider-Man" })
# contributor_2 = Contributor.create({ name: "Frank Miller", title: "The Dark Knight" })
# contributor_3 = Contributor.create({ name: "Geoff Johns", title: "Green Lantern" })
# contributor_4 = Contributor.create({ name: "David Mack", title: "Daredevil" })
# contributor_5 = Contributor.create({ name: "Jack Kirby", title: "The Mighty Thor" })
# contributor_6 = Contributor.create({ name: "Chris Clairmont", title: "Uncanny X-men"})

comic_1 = contributor_1.comics.create({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
comic_2 = contributor_2.comics.create({ title: "Batman The Dark Knight", description: "The caped protector of Gotham." })
comic_3 = contributor_3.comics.create({ title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" })
comic_4 = contributor_4.comics.create({ title: "Daredevil", description: "The man without fear." })
comic_5 = contributor_5.comics.create({ title: "The Mighty Thor", description: "God of thunder and lightning." })
comic_6 = contributor_6.comics.create({ title: "Uncanny X-men", description: "Mutants with extraordinary abilities." })

# Comic.create!([{ title: "The Dark Knight", description: "The caped protector of Gotham." },
# { title: "Spiderman", description: "Your friendly neighborhood spiderman." },
# { title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" },
# { title: "Daredevil", description: "The man without fear." }])

p "Created #{Comic.count} comics"

# comic_1 = Comic.create!({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
# comic_2 = Comic.create!({ title: "The Dark Knight", description: "The caped protector of Gotham." })
# comic_3 = Comic.create!({ title: "Green Lantern", description: "Beware my power, Green Lantern's Light!" })
# comic_4 = Comic.create!({ title: "Daredevil", description: "The man without fear." })

reader_1 = Reader.create!({ name: "Agus", email: "ag@own.com", password: "1234", password_confirmation: "1234" })
reader_2 = Reader.create!({ name: "Carlos", email: "cl@twist.com", password: "2345", password_confirmation: "2345" })
reader_3 = Reader.create!({ name: "Vicky", email: "viky@unknown.com", password: "3456", password_confirmation: "3456" })
reader_4 = Reader.create!({ name: "Susie", email: "sus@sen.com", password: "4567", password_confirmation: "4567" })

# reader_1 = Reader.create!({ name: "Agus", email: "ag@own.com" })
# reader_2 = Reader.create!({ name: "Carlos", email: "cl@twist.com" })
# reader_3 = Reader.create!({ name: "Vicky", email: "viky@unknown.com" })
# reader_4 = Reader.create!({ name: "Susie", email: "sus@sen.com" })

review_1 = reader_1.reviews.create!({ name: "Agus", description: "Batman The Dark Knight is a masterpiece.", comic_id: comic_2.id })
review_2 = reader_2.reviews.create!({ name: "Carlos", description: "Green Lantern presents a great story from start to finish.", comic_id: comic_3.id }) 
review_3 = reader_3.reviews.create!({ name: "Vicky", description: "Spider-man has amazing art and a great story.", comic_id: comic_1.id })
review_4 = reader_4.reviews.create!({ name: "Susie", description: "Could have used more umph!!!", comic_id: comic_4.id })
review_5 = reader_4.reviews.create!({ name: "Susie", description: "Dazzling and beyond expectations!", comic_id: comic_1.id })

# review_1 = comic_2.reviews.create!({ name: "Agus", description: "The Dark Knight is a masterpiece.", reader_id: reader_1.id })


# Reader.create!([{ name: "Agus", email: "ag@owners.com", password: "1234" },
# { name: "Carlos", email: "cl@twist.com", password: "2345" },
# { name: "Vicky", email: "viky@known.com", password: "3456" },
# { name: "Susie", email: "sus@sen.com", password: "4567" }])


# review_1 = reader_1.reviews.create!({ name: "Agus", description: "The Dark Knight is a masterpiece." }) 


# comic_1 = reader_1.comics.create!({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
  
  # review_1 = comic_1.reviews.create!({ name: "Agus", description: "The Dark Knight is a masterpiece."})
  # review_1 = Review.create!({ name: "Agus", description: "The Dark Knight is a masterpiece.", comic_id: comic.id, reader_id: reader.id })
  
  # poem = Poem.create(author_name: poem["author"], title_name: poem["title"], lines: poem["lines"].join(", "), author_id: author.id) 

  # review_1 = reader_1.comics.create!({ title: "Spiderman", description: "Your friendly neighborhood spiderman." })
  # review_2 = reader_2.reviews.create!({ name: "Carlos", description: "Green Lantern presents a great story from start to finish."}) 
  # review_3 = reader_3.reviews.create!({ name: "Vicky", description: "Spider-man has amazing art and great story." })
  # review_4 = reader_4.reviews.create!({ name: "Susie", description: "Superman has a slow start but an amazing finish."})



# Review.create!([{ name: "Agus", description: "The Dark Knight is a masterpiece."}, 
#   { name: "Carlos", description: "Green Lantern presents a great story from start to finish."}, 
#   { name: "Vicky", description: "Spider-man has amazing art and great story." }, 
#   { name: "Sue", description: "Superman has a slow start but an amazing finish."}])