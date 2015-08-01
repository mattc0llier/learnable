class OrganizationsController < ApplicationController
 
  def index
    @organizations = Organization.all.order('title ASC')
  end

  def show
    @organization = Organization.find(params[:id])
    @resources = @organization.resources
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
