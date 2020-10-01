# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
             email: "example@tenkue.com",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "Junkrat",
             email: "junkrat@tenkue.com",
             password:              "junkrat",
             password_confirmation: "junkrat")

Post.create!(user_id: 1,
             content: 'hogehoge')
Post.create!(user_id: 2,
             content: 'はじめまして')
Post.create!(user_id: 2,
             content: 'はじめまして')
Post.create!(user_id: 2,
             content: 'はじめまして')                          