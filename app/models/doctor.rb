class Doctor < ApplicationRecord
  belongs_to :speciality
  has_many :visits
  has_many :patients, through: :visits
end
