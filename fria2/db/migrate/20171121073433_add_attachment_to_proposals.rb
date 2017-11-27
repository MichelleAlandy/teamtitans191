class AddAttachmentToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :attachment, :string
  end
end
