# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.destroy_all

Bleach = Article.create(title: "Bleach Thousand Year Blood War ", body: "Dans les temps anciens, les Quincy et les faucheurs d’âmes étaient des camarades. Mais un événement funeste, que l’anime explorera en profondeur, les a transformés en ennemis. En effet, les Quincy sont peut-être les ennemis les plus coriaces que la Soul Society ait jamais affrontés.", user_id: 1)
