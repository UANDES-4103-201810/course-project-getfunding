class CreateAdminAdministrateProyects < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_administrate_proyects do |t|
      t.references :Admin, foreign_key: true
      t.references :Proyect, foreign_key: true

      t.timestamps
    end
  end
end
