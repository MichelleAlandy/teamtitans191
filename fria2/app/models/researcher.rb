class Researcher < ApplicationRecord
	belongs_to :users, optional: true
	has_many :proposals
end
