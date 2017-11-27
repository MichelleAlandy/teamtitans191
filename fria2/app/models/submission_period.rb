class SubmissionPeriod < ApplicationRecord
	belongs_to :proposals, optional: true
end
