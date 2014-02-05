class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :name
      t.integer :extra_beds
      t.integer :price
      t.boolean :has_toilet
      t.boolean :has_shower
    end
  end

  def self.down
    drop_table :rooms
  end
end
