module Api
    module V1
        class ActivityTypesController < ApplicationController
            before_action :set_object, only: [:show, :update, :destroy]

            def index
                render json: Paginator.paginated_response(params, ActivityType.all.order(id: :asc), ["images"])
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
                @object = Activity.find(params[:id])
            end

            def object_params
                params.fetch(:object, {})
            end
        end
    end
end