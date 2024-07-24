class CivilApplicationsController < ApplicationController
  wrap_parameters format: []

  def index
    render json: 'Hello world', status: :ok
  end

  def show
    app = CivilApplication.first
    render json: app, status: :ok
  end

  def create
    app = CivilApplication.new(
      id: SecureRandom.uuid,
      reference_number: params[:reference_number],
      employment_income: params[:employment_income]
    )
    app.save!
    render json: app, status: :created
  end
end
