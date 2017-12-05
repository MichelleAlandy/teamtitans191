class Review < ApplicationRecord
	belongs_to :proposals
	belongs_to :committee_members
end
