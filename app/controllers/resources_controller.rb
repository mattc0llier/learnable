class ResourcesController < ApplicationController
  before_action :find_resource, only: [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.all.order('created_at DESC')
  end

  def show
    
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      flash[:success] = "New resource"
      redirect_to root_path

    else
      flash[:error] = "not this time buddy, change it!"
      render :new
    end

  end

  def edit
  end

  def update
    if @resource.update(resource_params)
      flash[:success] = "Thank you for updating your resource"
      redirect_to resource_path(@resource)
    else
      flash[:error] = "not this time buddy, change it!"
      render :edit
    end
  end

  def destroy
  end

  private
  def resource_params
    params.require(:resource).permit(:title, :url, :description, :price_in_pence, :free, :offline, 
      :tag_list, :location, :license, :difficulty, :content_type, :organization_id)
  end

  def find_resource
    @resource = Resource.find(params[:id])
  end

end
