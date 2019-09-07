class Room < ApplicationRecord
  belongs_to :house
  mount_uploaders :images, ImageUploader
end
