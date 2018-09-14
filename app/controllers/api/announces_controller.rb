module Api::V1
  class AnnouncesController < ApplicationController
    before_action :set_announce, only: [:show, :update, :destroy]

    # GET /announces
    def index
      @announces = Announce.order(:id)

      render json: @announces
    end

    # GET /announces/1
    def show
      render json: @announce
    end

    # POST /announces
    def create
      @announce = Announce.new(announce_params)

      if @announce.save
        render json: @announce, status: :created
      else
        render json: @announce.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /announces/1
    def update
      if @announce.update(announce_params)
        render json: @announce
      else
        render json: @announce.errors, status: :unprocessable_entity
      end
    end

    # DELETE /announces/1
    def destroy
      @announce.destroy
      if @announce.destroy
        head :no_content, status: :ok
      else
        render json: @announce.errors, status: :unprocessable_entity
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_announce
        @announce = Announce.find(params[:id])
      end

      # Only allow a trusted parameter "white announce" through.
      def announce_params
        params.require(:announce).permit(:address, :description, :excerpt, :title)
      end
  end
end
