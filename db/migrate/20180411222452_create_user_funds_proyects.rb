class CreateUserFundsProyects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_funds_proyects do |t|
      t.references :User, foreign_key: true
      t.references :Proyect, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
