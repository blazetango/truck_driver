module Api
  module V1
    class TruckDriversController < ActionController::API
      respond_to :json
      def escalations
        @escalations = Escalation.where(truck_driver_id: params[:truck_driver_id])

        render json:  @escalations, status: :ok
      end

      def payments
        @payments = Payment.where(truck_driver_id: params[:truck_driver_id])

        render json: @payments, status: :ok
      end

    end
  end
end
