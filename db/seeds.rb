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
potager1 = Potager.create!(
  name: "Magnifique potager",
  address: 'Paris',
  description: "Bonjour, Nous avons un grand terrain près de Rostrenen avec un jardin, de la forêt et une rivière pas loin. Nous n’avons pas d’outil de jardinage pour l’ instant mais il y a un cabanon, et surtout une grande envie d’apprendre à jardiner en famille et de pouvoir semer des graines de permaculture humaine et écologique  ! Si ce terrain de jeu peut vous intéresser, vous êtes les bienvenu.e.s !",
  surface: '550m2',
  price: '30€/m2',
  user: User.first
)
  file = URI.open('https://images.unsplash.com/photo-1516253593875-bd7ba052fbc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  file = URI.open('https://images.unsplash.com/photo-1516253593875-bd7ba052fbc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager1.photos.attach(io: file, filename: 'nes2.png', content_type: 'image/png')

  file = URI.open('https://images.unsplash.com/photo-1516253593875-bd7ba052fbc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager1.photos.attach(io: file, filename: 'nes3.png', content_type: 'image/png')

  file = URI.open('https://images.unsplash.com/photo-1516253593875-bd7ba052fbc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager1.photos.attach(io: file, filename: 'nes4.png', content_type: 'image/png')

potager2 = Potager.create!(
  name: "Les jonquilles",
  address: 'Saint-Maur',
  description: "Nous avons un grand jardin,  et l’idée qu’il faut partage,  nous accueillons une personne sérieuse, qui aime la nature et n’utilisera pas d’intrants chimiques, ,  on vous passera un bout de terrain, permacuture bienvenue. En échange de ce que vous voudrez ! bien cordialement ",
  surface: '24m2',
  price: '10€/m2',
  user: User.first
)
file = URI.open('https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

potager3 = Potager.create!(
  name: "Fermex",
  address: 'Marcilly',
  description: "Je n’ai plus le temps de m’occuper du jardin depuis un an, avant j’y avais fait un mini potager avec des tomates, courges, betteraves et aromatiques. Il reste aujourd’hui un kiwi male, un framboisier, un groseiller et de la menthe.  Le jardin à la particularité d’être en pente, divisé en 3 palier + une platebande.  Nous avons deux grands récupérateurs d’eau de pluie et un cabanon pour ranger les outils (quelques outils basiques et un taille haie ). Le jardin est disponible des à présent, les créneaux occupés sont à définir avec la personne qui souhaite y jardiner.",
  surface: '1000m2',
  price: '5€/m2',
  user: User.first
)

file = URI.open('https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager3.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

potager4 = Potager.create!(
  name: "La Garenne",
  address: 'St Jean',
  description: "2000m2 à votre disposition",
  surface: '2000m2',
  price: '12€/m2',
  user: User.first
)
file = URI.open('https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager4.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

potager5 = Potager.create!(
  name: "Les Caudalies",
  address: 'Carantec',
  description: "Bonjour, Nous avons un grand terrain près de Rostrenen avec un jardin, de la forêt et une rivière pas loin. Nous n’avons pas d’outil de jardinage pour l’ instant mais il y a un cabanon, et surtout une grande envie d’apprendre à jardiner en famille et de pouvoir semer des graines de permaculture humaine et écologique  ! Si ce terrain de jeu peut vous intéresser, vous êtes les bienvenu.e.s !",
  surface: '1500m2',
  price: '8€/m2',
  user: User.first
)
file = URI.open('https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager5.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

potager6 = Potager.create!(
  name: "La Beule",
  address: 'Vierzon',
  description: "Je n’ai plus le temps de m’occuper du jardin depuis un an, avant j’y avais fait un mini potager avec des tomates, courges, betteraves et aromatiques. Il reste aujourd’hui un kiwi male, un framboisier, un groseiller et de la menthe.  Le jardin à la particularité d’être en pente, divisé en 3 palier + une platebande.  Nous avons deux grands récupérateurs d’eau de pluie et un cabanon pour ranger les outils (quelques outils basiques et un taille haie ). Le jardin est disponible des à présent, les créneaux occupés sont à définir avec la personne qui souhaite y jardiner.",
  surface: '1500m2',
  price: '8€/m2',
  user: User.first
)
file = URI.open('https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
  potager6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')