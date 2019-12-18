class UnityTypesController < ApplicationController
  before_action :set_unity_type, only: [:show, :update, :destroy]

  # GET /unity_types
  def index
    @unity_types = UnityType.all

    render json: @unity_types
  end

  # GET /unity_types/1
  def show
    render json: @unity_type
  end

  # POST /unity_types
  def create
    @unity_type = UnityType.new(unity_type_params)

    if @unity_type.save
      render json: @unity_type, status: :created, location: @unity_type
    else
      render json: @unity_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /unity_types/1
  def update
    if @unity_type.update(unity_type_params)
      render json: @unity_type
    else
      render json: @unity_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /unity_types/1
  def destroy
    @unity_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unity_type
      @unity_type = UnityType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unity_type_params
      params.require(:unity_type).permit(:name)
    end
end
