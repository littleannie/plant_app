class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :message
      t.integer :status
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
