class Review < ApplicationRecord
	belongs_to :proposals, optional: true
	belongs_to :committee_members, optional: true
end
