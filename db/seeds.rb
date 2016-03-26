# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  Program.create(name: Faker::Company.name, link: Faker::Internet.url, start_date: Faker::Date.forward(rand(1..100)), end_date: Faker::Date.forward(rand(100..200)))
end

programs = Program.all

programs.each do |program|
  program.program_detail = ProgramDetail.create(address: Faker::Address.street_address + Faker::Address.city, phone_number: Faker::PhoneNumber.cell_phone, description: Faker::Hipster.sentence, days_offered: Faker::Date.between(2.days.ago, Date.today), time: "8:00AM - 6:00PM", location_type: Faker::Hipster.word, meals_offered: Faker::Hipster.word, grades_served: Faker::Hipster.word, enrollment_type: Faker::Hipster.word, enrollment_period: Faker::Hipster.word, enrollment_requirements: Faker::Hipster.word, cost: Faker::Hipster.word, focus: Faker::Hipster.sentence(3))
end