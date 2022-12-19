class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :specie
      t.boolean :indoor
      t.string :picture

      t.timestamps
    end
  end
end
