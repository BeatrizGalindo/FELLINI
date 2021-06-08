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

url = "http://www.omdbapi.com/?i=tt3896198&apikey=b9c13778"
movies = URI.open(url).read
movies_json = JSON.parse(movies)

movies_json["results"].each do |movie|
  Movie.create!(
    title: movie["title"],
    description: movie["plot"],
    director: movie["director"],
    year: movie["year"],
    poster: movie["poster"],
    rating: movie["metascore"],
    genre: movie["genre"],
    runtime: movie["runtime"],
    platform: Movie.platform.values.sample
  )
end

# 10 great movies
# Generate a unique title using faker for each movie
# Then we build url
# Make the request
# Collect the response in the variable
# With the details, we create a new instance of a movie
# select the random platform and assign it to the movie
# then we save it
10.times do
  great_movies = Movie.new(
    title:    Faker::Title.unique.title,
  )
  platform = Movie.platform.values.sample;
  great_movies.save!
end
