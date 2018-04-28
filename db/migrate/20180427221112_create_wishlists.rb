class CreateWishlists < ActiveRecord::Migration[5.1]
  def change
    create_table :wishlists do |t|
      t.references :User, foreign_key: true
      t.references :Project, foreign_key: true

      t.timestamps
    end
  end
end
