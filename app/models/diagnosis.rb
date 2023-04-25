class Diagnosis < ApplicationRecord
  belongs_to :visit
  has_one :prescription
end
