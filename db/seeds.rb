# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
puts 'booking destroyed'
Booking.destroy_all
puts 'potager destroyed'
Potager.destroy_all
puts 'potager destroyed'
User.destroy_all
puts 'user destroyed'
User.create!(
    email: "carlos@mail.com",
    password: "llllllll"
)
Potager.create!(
  name: "Magnifique potager",
  address: 'Paris',
  description: "Un très beau potager ensoleillé",
  surface: '12m2',
  price: '30€/m2',
  img_url: "https://images.unsplash.com/photo-1516253593875-bd7ba052fbc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)
Potager.create!(
  name: "Les jonquilles",
  address: 'Saint-Maur',
  description: "Un magnifique jardin prêt à planter",
  surface: '24m2',
  price: '10€/m2',
  img_url: "https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)
Potager.create!(
  name: "Fermex",
  address: 'Marcilly',
  description: "un pré de 1000m2, prêt à béché",
  surface: '1000m2',
  price: '5€/m2',
  img_url: "https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)
Potager.create!(
  name: "La Garenne",
  address: 'St Jean',
  description: "2000m2 à votre disposition",
  surface: '2000m2',
  price: '12€/m2',
  img_url: "https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)
Potager.create!(
  name: "Les Caudalies",
  address: 'Carantec',
  description: "Beau champs en jachère",
  surface: '1500m2',
  price: '8€/m2',
  img_url: "https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)
Potager.create!(
  name: "La Beule",
  address: 'Vierzon',
  description: "Potager à partager",
  surface: '1500m2',
  price: '8€/m2',
  img_url: "https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)
