class Researcher < ApplicationRecord
	belongs_to :user, optional: true
	has_many :proposals
end
