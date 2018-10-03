# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pain_amounts = [
  { amount: 0, label: "very little" },
  { amount: 1, label: "" },
  { amount: 2, label: "" },
  { amount: 3, label: "" },
  { amount: 4, label: "" },
  { amount: 5, label: "" },
  { amount: 6, label: "" },
  { amount: 7, label: "" },
  { amount: 8, label: "" },
  { amount: 9, label: "worst possible" }
]

pain_amounts.each { |pain| PainAmount.create!(pain) }
