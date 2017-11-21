class Review < ApplicationRecord
	belongs_to :proposals
	belongs_to :users
end
