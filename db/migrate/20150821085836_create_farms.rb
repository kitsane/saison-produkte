class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name, null: false
      t.string :address, null: false
      t.string :zip_code, null: false
      t.string :place, null: false
      t.string :image, null: false

      t.timestamps null: false
    end
    add_index :farms, :name, unique: true
  end
end
