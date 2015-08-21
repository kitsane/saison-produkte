class AddLatitudeAndLongitudeToFarm < ActiveRecord::Migration
  def change
    add_column :farms, :latitude, :float
    add_column :farms, :longitude, :float
  end
end
