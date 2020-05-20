Potager.destroy_all
puts 'potager destroyed'
User.destroy_all
puts 'user destroyed'

User.create!(
    email: "carlos@mail.com",
    password: "llllllll"
)

Potager.create!(
  name: "La vache",
  address: '12 rue Georges Hamon, 29180, Locronan',
  description: "lorem",
  surface: '12m2',
  price: '5€/m2',
  img_url: "https://images.unsplash.com/photo-1516253593875-bd7ba052fbc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)

Potager.create!(
  name: "La carotte",
  img_url: "https://images.unsplash.com/photo-1528092744838-b91de0a10615?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: User.first
)

Potager.create!(
  name: "Fermex",
  img_url: "https://images.unsplash.com/photo-1557429287-b2e26467fc2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80",
  user: User.first
)

puts "#{Potager.count} potagers created"