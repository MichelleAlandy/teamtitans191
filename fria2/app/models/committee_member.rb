class CommitteeMember < ApplicationRecord
	belongs_to :users
	has_many :reviews
end
