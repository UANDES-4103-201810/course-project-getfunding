class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.references :Proyect, foreign_key: true
      t.integer :value
      t.text :condition

      t.timestamps
    end
  end
end
