class AddEmailConfirmColumnToUserFundsProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :user_funds_projects, :email_confirmed, :boolean, :default => false
    add_column :user_funds_projects, :confirm_token, :string
  end
end
