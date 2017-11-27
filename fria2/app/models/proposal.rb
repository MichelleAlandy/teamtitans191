class Proposal < ApplicationRecord
	belongs_to :proposal
	has_one :submission_period
end
