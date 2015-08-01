class Resource < ActiveRecord::Base

	belongs_to :organizations
	has_many :tagging
	has_many :topics, through: :tagging

	enum difficulty: [ :beginner, :intermediate, :expert ]

	enum content_type: [ :blog, :course, :video, :podcast ]

	def self.tagged_with(title)
  		Topic.find_by_title!(title).resources
	end


end
