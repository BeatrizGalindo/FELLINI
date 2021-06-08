# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'
Movie.destroy_all

# 10 great movies
# Generate a unique title using faker for each movie
# Then we build url
# Make the request
# Collect the response in the variable
# With the details, we create a new instance of a movie
# select the random platform and assign it to the movie
# then we save it
platforms = Movie.platform.values

10.times do
  movie_title = Faker::Movie.unique.title
  url = "http://www.omdbapi.com/?t=#{movie_title}&apikey=#{ENV['OMDB_KEY']}"
  response = JSON.parse(URI.open(url).read)

  movie = Movie.new(
    title: response["Title"],
    description: response["Plot"],
    director: response["Director"],
    year: response["Year"],
    rating: response["Metascore"],
    genre: response["Genre"],
    runtime: response["Runtime"],
    platform: platforms.sample
  )
  poster_file = URI.open(response["Poster"])
  movie.poster.attach(io: poster_file, filename: response["Title"], content_type: 'image/png')
  movie.save!
end
