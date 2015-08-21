class Farm < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :user, validate: true

  validates :name, :image, :address, :zip_code, :place, presence: true
  validates :name, uniqueness: true
end
