class CommitteeHead < ApplicationRecord
	belongs_to :users
	has_many :reviews
end
