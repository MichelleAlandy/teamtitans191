class CreateJoinTables < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :users, :admins, table_name: :admin_accounts do |t|
	  t.index :user_id
	  t.index :admin_id
	end
	create_join_table :users, :committee_members, table_name: :committee_member_accounts do |t|
	  t.index :user_id
	  t.index :committee_member_id
	end
	create_join_table :users, :researchers, table_name: :researcher_accounts do |t|
	  t.index :user_id
	  t.index :researcher_id
	end
  end
end
