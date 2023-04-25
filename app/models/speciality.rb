class Speciality < ApplicationRecord
  self.table_name = "speciality"
  has_many :doctors
end
