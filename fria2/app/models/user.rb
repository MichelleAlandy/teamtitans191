class User < ApplicationRecord
	has_many :admins
	has_many :committee_heads
	has_many :committee_members
end
