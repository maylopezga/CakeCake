class CreateCakeCakes < ActiveRecord::Migration[5.1]
  def change
    create_table :cake_cakes do |t|
      t.string :name
      t.text :ingredients

      t.timestamps
    end
  end
end
