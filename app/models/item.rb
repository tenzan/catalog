class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :name, :image, presence: true

  validates_processing_of :image
  validate :image_size_validation

  private
  def image_size_validation
    errors[:image] << "should be less than 2500KB" if image.size > 2.5.megabytes
  end

end
