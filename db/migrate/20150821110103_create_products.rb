class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :farm, index: true, foreign_key: true
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
