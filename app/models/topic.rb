class Topic < ActiveRecord::Base

	has_many :tagging
	has_many :resources, through: :tagging

end
