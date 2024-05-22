require 'debug'

module Api
    module V1
        class ActivitiesController < ApplicationController
            # before_action :set_object, only: [:show, :update, :destroy]

            def index
                render json: Paginator.paginated_response(params, Activity.all.order(end_time: :desc), ["images"])
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

            def synchronize
                activities_to_synchronize = params[:data]
                ActivitySynchronizationJob.perform_async(activities_to_synchronize.to_json)
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