class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :title
      t.string :researcher
      t.text :coresearchers
      t.text :objectives
      t.text :descriptions
      t.string :attachment
      t.boolean :is_draft
      t.integer :status
      t.integer :votes
      t.boolean :is_vetoed

      t.timestamps
    end
  end
end
