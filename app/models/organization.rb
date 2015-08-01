class Organization < ActiveRecord::Base

	has_many :resources
	has_many :topics, through: :resources
end
