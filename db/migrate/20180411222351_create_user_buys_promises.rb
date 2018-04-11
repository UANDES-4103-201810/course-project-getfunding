class CreateUserBuysPromises < ActiveRecord::Migration[5.1]
  def change
    create_table :user_buys_promises do |t|
      t.references :User, foreign_key: true
      t.references :Promise, foreign_key: true

      t.timestamps
    end
  end
end
