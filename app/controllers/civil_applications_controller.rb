class CivilApplicationsController < ApplicationController
  def index
    render json: 'Application details'
  end

  def show
    render json: 'hello'
  end
end
