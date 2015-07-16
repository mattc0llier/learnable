class Resource < ActiveRecord::Base

	enum difficulty: [ :beginner, :intermediate, :expert ]

	enum content_type: [ :blog, :course, :video, :podcast ]

end
