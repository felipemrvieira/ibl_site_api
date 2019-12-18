class SnTypesController < ApplicationController
  before_action :set_sn_type, only: [:show, :update, :destroy]

  # GET /sn_types
  def index
    @sn_types = SnType.all

    render json: @sn_types
  end

  # GET /sn_types/1
  def show
    render json: @sn_type
  end

  # POST /sn_types
  def create
    @sn_type = SnType.new(sn_type_params)

    if @sn_type.save
      render json: @sn_type, status: :created, location: @sn_type
    else
      render json: @sn_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sn_types/1
  def update
    if @sn_type.update(sn_type_params)
      render json: @sn_type
    else
      render json: @sn_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sn_types/1
  def destroy
    @sn_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sn_type
      @sn_type = SnType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sn_type_params
      params.require(:sn_type).permit(:title)
    end
end
