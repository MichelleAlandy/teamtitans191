class AddUserRefToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_reference :admins, :user, foreign_key: true
  end
end
