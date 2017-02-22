class RegisteredApplicationsController < ApplicationController
  def index
    @applications = RegisteredApplication.where(user_id: current_user.id)
  end

  def show
    @application = RegisteredApplication.find(params[:id])
  end

  def new
    @application = RegisteredApplication.new
  end

  def create
    @application = RegisteredApplication.new
    @application.update_attributes(application_params)

    if @application.save
      render @application
    else
      render 'new'
    end
  end

  def edit
    @application = RegisteredApplication.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
