class SubjectsController < ApplicationController
	before_action :find_subject, only: [:show, :edit, :update, :destroy]

  def index
  	@subjects = Subject.all.order('title ASC')
  end

  def show
  end

  private

  def find_subject
    @subject = Subject.find(params[:id])
  end
end
