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
    ref_number = params.fetch(:reference_number, nil)
    if ref_number
      civil_application = CivilApplication.find_by(reference_number: ref_number)
      
      if civil_application
        civil_application.update!(
          attributes_to_update
        )
        civil_application.save!
        render json: civil_application.reference_number, status: :ok
      else
        civil_application ||= CivilApplication.new(
          id: SecureRandom.uuid,
          reference_number: ref_number,
          )
        civil_application.update!(
          attributes_to_update
        )
        civil_application.save!
        render json: civil_application.reference_number, status: :created
      end
    else
      render json: 'You need to specify a reference number', status: :bad_request
    end
  end

  private

  def attributes_to_update
    params.permit(
      :reference_number,
      :employment_income_amount,
      :employment_income_frequency,
      :housing_amount,
      :housing_frequency,
      :savings_amount
    )
  end
end
