# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Announce.destroy_all
User.destroy_all
UserRole.destroy_all
Tag.destroy_all

puts "Everything Cleaned UP"

UserRole.create!(name: "employeur")
puts "UserRole created"


employer1 = User.new(
  password: pwd,
  email: "rv@gmail.com",
  phone: "0658634788",
  position: "Entrepreneur",
  user_role_id: UserRole.first.id,
  headline: "Hervé Bouliac, PDG de Lachaud Transports, je recrute régulièrement des personnes motivées et intéressées pour exercer le métier de Chauffeur PL",
  name: "Hervé Bouliac",
  firstname: "Hervé",
  lastname: "Bouliac",
  company_name: "Lachaud transports"
  # banner_url:
  # photo_url:
  )
employer1.save!

puts "Employer 1 created"

announce1 = Announce.create!(
    user_id: employer1.id,
    title: "Chauffeur PL",
    address: "ZAE DE LA BORIE 24600 VILLETOUREIX",
    description: "Nous recherchons 10 chauffeurs pour la fin de l'année. Formation permis C possible",
  )
puts "Announce 1 created"

tag1 = Tag.create!(name:"transports")
puts "Tag 1 created"

employer2 = User.new(
  password: pwd,
  email: "armandine@gmail.com",
  phone: "0586347777",
  position: "Traiteur",
  user_role_id: UserRole.first.id,
  headline: "Armandine Traiteur, nous cuisinons des produits locaux et de qualité pour vos évènements",
  name: "Armande Voisin",
  firstname: "Armande",
  lastname: "Voisin",
  company_name: "Lachaud transports",
  # banner_url:
  # photo_url:
  )
employer2.save!

puts "Employer 2 created"

announce2 = Announce.create!(
    user_id: employer2.id,
    title: "Serveur",
    address: "45 AV DU 26 MARS 1944 24600 RIBERAC",
    description: "Nous recherchons un serveur pour la saison estivale",
  )
puts "Announce 2 created"

tag2 = Tag.create!(name:"restauration")
puts "Tag 2 created"

employer3 = User.new(
  password: pwd,
  email: "Intermarche@gmail.com",
  phone: "0567754556",
  position: "Mousquetaire",
  user_role_id: UserRole.last.id,
  headline: "Intermarché, spécialiste de la distribution",
  name: "Philippe Chouffier",
  firstname: "Philippe",
  lastname: "Chouffier",
  company_name: "Intermarché",
  # banner_url:
  # photo_url:
  )
employer3.save!

puts "Employer 3 created"

announce3 = Announce.create!(
    user_id: employer3.id,
    title: "Charcutier",
    address: "ROUTE DE MUSSIDAN 24600 RIBERAC",
    description: "Nous recherchons un Charcutier expérimenté",
  )
puts "Announce 3 created"

tag3 = Tag.create!(name:"Charcutier")
puts "Tag 3 created"


employee1 = User.new(
  password: pwd,
  email: "chris@gmail.com",
  phone: "0456789009",
  position: "Recherche d'emploi",
  user_role_id: UserRole.last.id,
  headline: "Je recherche un emploi dans la restauration",
  name: "Christophe Saulier",
  firstname: "Christophe",
  lastname: "Saulier",
  # company_name: "Lachaud transports",
  # banner_url:
  # photo_url:
  )
employee1.save!

puts "Employee 1 created"

tag2 = Tag.create!(name:"restauration")
puts "Tag 2 created"

employee2 = User.new(
  password: pwd,
  email: "Johnny@gmail.com",
  phone: "0678833456",
  position: "Recherche d'emploi",
  user_role_id: UserRole.last.id,
  headline: "Je recherche un emploi dans le bâtiment",
  name: "Johnny sarre",
  firstname: "Johnny",
  lastname: "Sarre",
  # company_name: "Lachaud transports",
  # banner_url:
  # photo_url:
  )
employee2.save!

puts "Employee 2 created"

tag4 = Tag.create!(name:"restauration")
puts "Tag 4 created"

# announce1 = employer1.announces.create(announce1)
