# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ name: 'Jaime' , last_name: 'Auger' , email: 'jiauger@miuandes.cl' , phone: '981944367' , password: 'microlab' , user_address: 'rodrigo de triana' }, 
                     { name: 'Rodrigo' , last_name: 'Peña' , email: 'rpena@miuandes.cl' , phone: '235835238' , password: 'hackerrrr' , user_address: 'las vistimas' }, 
                     { name: 'Cristobal' , last_name: 'Uslar' , email: 'cuslar@miuandes.cl' , phone: '62432487' , password: '294-ccllkk' , user_address: 'carmencita' }, 
                     { name: 'Vicente' , last_name: 'Zoto' , email: 'vazoto@miuandes.cl' , phone: '234678876' , password: 'zeldaethf' , user_address: 'la gloria' }, 
                     { name: 'Fabian' , last_name: 'Coverg' , email: 'fcoverg@miuandes.cl' , phone: '92735351' , password: 'chiquitass' , user_address: 'las verbenas' }
                     ])

h = User.all[0]
i = User.all[1]
j = User.all[2]
k = User.all[3]
l = User.all[4]

venues = Venue.create([{name:'Estadio Nacionaaaaaaaaaaal', address:'Grecia', capacity:'60000'}])

events = Event.create([{ name: 'Bon jovi', description: 'concierto', start_date: DateTime.new(2020,9,1,19), venue: venues[0] },
                       { name: 'Lady Gaga', description: 'beneficencia', start_date: DateTime.new(2021,9,1,19), venue: venues[0] }, 
                       { name: 'Los Pulentos', description: 'show', start_date: DateTime.new(2022,9,1,17), venue: venues[0] 
                       }])

d = Event.find_by(name: 'Bon jovi')
e = Event.find_by(name: 'Lady Gaga')
f = Event.find_by(name: 'Los Pulentos')

categories = Category.create([{name: 'Platea', price: 10000 },{ name: 'Oro', price: 20000 }, {name: 'Andes', price: 30000}])
a = Category.find_by(name: 'Platea')
b = Category.find_by(name: 'Oro')
c = Category.find_by(name: 'Andes')

Order.create({amount: 10000, user: User.first, date: Date.today})


tickets = Ticket.create(
    [{  event: d, category: a, user: h, order: Order.first },
     {  event: e, category: b, user: h, order: Order.first },
     {  event: f, category: c, user: h, order: Order.first },
     {  event: d, category: a, user: i, order: Order.first },
     {  event: e, category: a, user: i, order: Order.first },
     {  event: f, category: a, user: i, order: Order.first },
     {  event: d, category: b, user: j, order: Order.first },
     {  event: e, category: b, user: j, order: Order.first },
     {  event: f, category: b, user: j, order: Order.first },
     {  event: d, category: c, user: k, order: Order.first },
     {  event: e, category: c, user: k, order: Order.first },
     {  event: f, category: c, user: k, order: Order.first },
     {  event: d, category: a, user: l, order: Order.first },
     {  event: e, category: a, user: l, order: Order.first },
     {  event: f, category: b, user: l, order: Order.first }])









