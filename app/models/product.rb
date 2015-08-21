class Product < ActiveRecord::Base
  belongs_to :farm, validate: true

  validates :name, presence: true
  validates :name, uniqueness: { scope: :farm_id }
end
