class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.references :Project, foreign_key: true
      t.integer :value
      t.string :condition

      t.timestamps
    end
  end
end
