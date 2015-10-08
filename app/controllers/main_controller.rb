class MainController < ApplicationController

	def index
  end

  def about
  end

  def submit
  	@organizations = Organization.all.order('title ASC')
  end

end
