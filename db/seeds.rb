# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

  Appointment.destroy_all
  Patient.destroy_all
  Doctor.destroy_all
  City.destroy_all
  Specialty.destroy_all
  DoctorSpecialty.destroy_all

  City.create(name: "Nantes")
  Specialty.create(name: Faker::Job.title)
  city = City.all.sample
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Number.number(digits: 5), city: city)
  doctor = Doctor.all.sample
  city = City.all.sample
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: city)
  patient = Patient.all.sample
  city = City.all.sample
  appointment = Appointment.create(doctor: doctor, patient: patient, date: Faker::Date.between(from: 5.years.ago, to: Date.today), city: city)
  specialty = Specialty.all.sample
  doctor_specialty = DoctorSpecialty.create(doctor: doctor, specialty: specialty)
