class FarmSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :zip_code, :place, :latitude, :longitude
end
