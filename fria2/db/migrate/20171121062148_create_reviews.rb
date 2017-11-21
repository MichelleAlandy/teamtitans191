class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :attachment
      t.text :comment
      t.boolean :is_decided
      t.boolean :is_vote_yes

      t.timestamps
    end
  end
end
