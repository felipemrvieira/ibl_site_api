class UnitiesController < ApplicationController
  before_action :set_unity, only: [:show, :update, :destroy]

  # GET /unities
  def index
    @unities = Unity.all

    render json: @unities
  end

  # GET /unities/1
  def show
    render json: @unity
  end

  # POST /unities
  def create
    @unity = Unity.new(unity_params)

    if @unity.save
      render json: @unity, status: :created, location: @unity
    else
      render json: @unity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /unities/1
  def update
    if @unity.update(unity_params)
      render json: @unity
    else
      render json: @unity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /unities/1
  def destroy
    @unity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unity
      @unity = Unity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unity_params
      params.require(:unity).permit(:name, :emails, :site)
    end
end
