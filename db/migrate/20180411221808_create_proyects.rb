class CreateProyects < ActiveRecord::Migration[5.1]
  def change
    create_table :proyects do |t|
      t.references :User, foreign_key: true
      t.string :name
      t.text :description
      t.string :category
      t.integer :goal
      t.integer :money_colected
      t.date :expiration_date
      t.string :state
      t.date :start_date

      t.timestamps
    end
  end
end
