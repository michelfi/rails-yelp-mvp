# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

restaurants = [
  { name: "resto chinois" }, { address: "Lord of the Rings" }, { phone_number: "06 12 13 15 65"}, { category: "chinese" },
  { name: "resto italen" }, { address: "27 rue des alouettes" }, { phone_number: "06 99 13 15 65" }, { category: "italian" },
  { name: "resto japonais" }, { address: "15 rue de la victoire" }, { phone_number: "06 12 13 15 74" }, { category: "japanese" },
  { name: "resto français" }, { address: "13 rue turenne" }, { phone_number: "06 12 82 15 65" }, { category: "french" },
  { name: "resto belge" }, { address: "55 route des guerriers" }, { phone_number: "06 92 13 15 65" }, { category: "belgian" }]

  restaurants.each do |data|
    Restaurant.create(
      name: data[:name],
      address: data[:address],
      phone_number: data[:phone_number],
      category: data[:category]
    )
  end
