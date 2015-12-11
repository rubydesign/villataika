class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string  :email
      t.date    :arriving
      t.string  :name
      t.string  :comment
      t.string  :phone
      t.integer :nights
      t.integer :room_id
      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
