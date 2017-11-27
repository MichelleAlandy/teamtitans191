class CommitteeMember < ApplicationRecord
	belongs_to :users
	has_many :proposals
end
