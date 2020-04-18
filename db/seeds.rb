# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.exists?
  user = User.create!(
    email: 'admin@example.com',
    username: 'admin',
    password: 'pass1234',
    password_confirmation: 'pass1234'
  )
end

unless Link.exists?
  links = 3.times.each do |i|
    user.links.create!("link - #{i}", url: 'https://www.google.com')
  end
end