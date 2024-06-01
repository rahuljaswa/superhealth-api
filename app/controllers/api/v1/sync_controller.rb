module Api
    module V1
        class SyncController < ApplicationController
            def all
                activities_params = params[:activities]
                if activities_params
                    activities_to_synchronize = activities_params[:data]
                    ActivitySynchronizationJob.perform_async(activities_to_synchronize.to_json)
                end

                measurements_params = params[:measurements]
                if measurements_params
                    measurements_to_synchronize = measurements_params[:data]
                    MeasurementSynchronizationJob.perform_async(measurements_to_synchronize.to_json)
                end
            end
        end
    end
end