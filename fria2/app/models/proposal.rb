class Proposal < ApplicationRecord
	has_one :submission_periods
	belongs_to :researchers
	has_many :reviews
end
