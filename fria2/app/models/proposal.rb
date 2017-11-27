class Proposal < ApplicationRecord
	belongs_to :proposal, optional: true
	has_one :submission_period

	mount_uploader :avatar, AvatarUploader
end
