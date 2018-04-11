class CreateDescriptivePages < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptive_pages do |t|
      t.references :Proyect, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
