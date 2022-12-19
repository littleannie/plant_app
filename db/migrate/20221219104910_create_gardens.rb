class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :picture
      t.date :booking_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
