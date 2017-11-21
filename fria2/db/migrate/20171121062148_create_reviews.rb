class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :proposal_id
      t.integer :committee_member_id
      t.string :attachment
      t.text :comment
      t.boolean :is_decided
      t.boolean :is_vote_yes

      t.timestamps
    end
  end
end
