module Api
    module V1
        class MeasurementTypeUserSummariesController < ApplicationController
            before_action :set_object, only: [:show, :update, :destroy]

            def index
                collection = MeasurementTypeUserSummary.joins(:measurement_type).joins(:user).where("users.id = 1").order("measurement_types.name")
                render json: Paginator.paginated_response(params, collection, ["measurement_type.measurement_type_category"])
            end

            def show
                render json: @object, include: [""] 
            end

            def create
                render :json => { :errors => [ERROR_MESSAGE_FORBIDDEN] }, :status => :forbidden
            end

            def update
                render :json => { :errors => [ERROR_MESSAGE_FORBIDDEN] }, :status => :forbidden
            end

            def destroy
                render :json => { :errors => [ERROR_MESSAGE_FORBIDDEN] }, :status => :forbidden
            end


            private

            def set_object
                @object = MeasurementTypeUserSummary.find(params[:id])
            end

            def object_params
                params.fetch(:object, {})
            end
        end
    end
end
