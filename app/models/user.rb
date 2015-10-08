class User < ActiveRecord::Base


	def self.from_omniauth(auth)
	  where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.name = auth.info.name
	    user.oauth_token = auth.credentials.token
	    user.save!
	  end
	end

	enum role: [:user, :admin]
  	after_initialize :set_default_role, :if => :new_record?

	def set_default_role
	  self.role ||= :user
	end
end
