class SubjectsController < ApplicationController
  def index
  	@subjects = Subject.all.order('title ASC')
  end

  def show
  end

  def show
  end
end
