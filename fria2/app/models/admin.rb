class Admin < ApplicationRecord
	belongs_to :users, optional: true
end
