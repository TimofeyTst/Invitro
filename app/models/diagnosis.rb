class Diagnosis < ApplicationRecord
  belongs_to :visit
  has_many :prescription, foreign_key: :diagnos_id, dependent: :destroy
end
