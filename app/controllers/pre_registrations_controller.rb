class PreRegistrationsController < ApplicationController
  before_action :set_pre_registration, only: [:show, :update, :destroy]

  # GET /pre_registrations
  def index
    @pre_registrations = PreRegistration.all

    render json: @pre_registrations
  end

  # GET /pre_registrations/1
  def show
    render json: @pre_registration
  end

  # POST /pre_registrations
  def create
    @pre_registration = PreRegistration.new(pre_registration_params)

    if @pre_registration.save
      render json: @pre_registration, status: :created, location: @pre_registration
    else
      render json: @pre_registration.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pre_registrations/1
  def update
    if @pre_registration.update(pre_registration_params)
      render json: @pre_registration
    else
      render json: @pre_registration.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pre_registrations/1
  def destroy
    @pre_registration.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_registration
      @pre_registration = PreRegistration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pre_registration_params
      params.require(:pre_registration).permit(:name, :email, :phone, :unity_type_id, :unity_id)
    end
end
