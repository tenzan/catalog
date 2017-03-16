class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :name, :image, presence: true
end
