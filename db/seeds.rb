# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name: "Luis", last_name: "Mendoza", email: "luis@mendoza.io", password: "luismendoza")
User.create!(first_name: "Enrique", last_name: "Mendoza", email: "luis@luismendoza.mx", password: "luismendoza")

Speaker.create(first_name: "Paola", last_name: "Reyner")
Speaker.create(first_name: "Sofía", last_name: "García")
Speaker.create(first_name: "Eva", last_name: "Pérez")

Location.create(name: "Auditorio")
Location.create(name: "Sala de Conferencias")
Location.create(name: "Salon")

Event.create(name: "Evento 1", speaker_id: 1, location_id: 1)
Event.create(name: "Evento 2", speaker_id: 2, location_id: 2)
Event.create(name: "Evento 3", speaker_id: 3, location_id: 3)