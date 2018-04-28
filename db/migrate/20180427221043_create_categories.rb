class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.references :User, foreign_key: true
      t.references :Project, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
