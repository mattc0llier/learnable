class OrganizationsController < ApplicationController
 
  def index
    @organizations = Organization.all.order('title ASC')
  end

  def show
    @organization = Organization.find(params[:id])
    @resources = @organization.resources
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      flash[:success] = "New organization"
      redirect_to root_path

    else
      flash[:error] = "not this time buddy, change it!"
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
  def organization_params
    params.require(:organization).permit(:title)
  end
end
