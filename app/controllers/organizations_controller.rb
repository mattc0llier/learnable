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
    @organizations = Organization.all.order('title ASC')
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
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      flash[:success] = "Thank you for updating your organization"
      redirect_to organization_path(@organization)
    else
      flash[:error] = "not this time buddy, change it!"
      render :edit
    end
  end

  private
  def organization_params
    params.require(:organization).permit(:title, :tag_line, :url, :logo)
  end
end
