class Review < ApplicationRecord
	belongs_to :proposals, optional: true
	belongs_to :users, optional: true
end
