class Farm < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :user, validate: true

  validates :name, :image, :address, :zip_code, :place, presence: true
  validates :name, uniqueness: true

  has_many :products
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    "#{address}, #{zip_code} #{place}, Schweiz"
  end
end
