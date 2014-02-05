class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string  :email
      t.date    :arriving
      t.string  :name
      t.string  :street
      t.string  :town
      t.string  :phone
      t.date    :leaving
      t.integer :room_id
      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
