# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create({email: "guest@guest.com", password: "123456", password_confirmation: "123456"})
pst = PaymentSourceType.create [
  {name: "Credit Card", description: "Credit card payments"},
  {name: "Loans", description: "Every loan (auto, student, ect.)"},
  {name: "Grocery", description: "Payments from grocery shopping"},
  {name: "Misc", description: "All other payments..."}
]
