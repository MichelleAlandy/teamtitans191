class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :string
      t.string :contact_number
      t.string :current_type

      t.timestamps
    end
  end
end
