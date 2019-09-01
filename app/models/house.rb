class House < ApplicationRecord
  has_many :rooms
  enum gender_type: { male: 1, female: 2, mix: 3 }
end
