class Dean < ApplicationRecord
	belongs_to :users, optional: true
end
