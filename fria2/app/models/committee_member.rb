class CommitteeMember < ApplicationRecord
	belongs_to :users, optional: true
	has_many :reviews
	has_many :proposals, through: :reviews
end
