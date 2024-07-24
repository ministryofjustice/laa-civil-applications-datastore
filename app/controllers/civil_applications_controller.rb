class CivilApplicationsController < ApplicationController
  wrap_parameters format: []

  def index
    render json: 'Hello world', status: :ok
  end

  def show
    ref = params[:reference_number]
    app = CivilApplication.find_by(reference_number: ref)
    if app
      render json: app, status: :ok
    else
      render status: :not_found
    end
  end

  def create
    app = CivilApplication.new(
      id: SecureRandom.uuid,
      reference_number: params[:reference_number],
      employment_income: params[:employment_income]
    )
    app.save!
    render json: app.reference_number, status: :created
  end
end
