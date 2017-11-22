class AddSubmittedToResearcher < ActiveRecord::Migration[5.1]
  def change
    add_column :researchers, :submitted, :boolean
  end
end
