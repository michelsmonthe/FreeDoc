class Appointment < ApplicationRecord
  belongs_to :doctor, optional: true #en lien avec le docteur et rendre optionnel pour le docteur uniquement
  belongs_to :patient #en lien avec le patient
  belongs_to :city
end
