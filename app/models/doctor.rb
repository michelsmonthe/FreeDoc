class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy #peut avoir plusieurs rendez-vous et les rendez-vous dependent du docteur et du patient
  has_many :patients, through: :appointments
  belongs_to :city
  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties
end
