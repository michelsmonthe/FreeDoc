class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments #un patient peut avoir plusieurs rendez-vous avec le docteur
  belongs_to :city 
end
