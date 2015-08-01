class TopicsController < ApplicationController
  before_action :find_topic, only: [:show, :edit, :update, :destroy]

  def index
  	@topics = Topic.all.order('title ASC')
  end

  def show
  	
  end

  def create

  end

  private

  def find_topic
    @topic = Topic.find(params[:id])
  end
end
