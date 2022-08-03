# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
movies = Movie.new(title: "Jurassic Park", year: 2001, length: "130 minutes")
movies.save

movies = Movie.new(title: "Nope", year: 2022, length: "135 minutes")
movies.save

actors = Actor.new(name: "Noomi Rapace", age: 42)
actors.save
actors = Actor.new(name: "Jeff Goldblum", age: 69)
actors.save
