class Proposal < ApplicationRecord
	belongs_to :researchers
	has_one :submission_period
	has_many :reviews
	has_many :committee_members, through: :reviews

	mount_uploader :avatar, AvatarUploader
end
