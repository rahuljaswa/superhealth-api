module Api
    module V1
        class SyncController < ApplicationController
            def all
                activities_to_synchronize = params[:activities][:data]
                ActivitySynchronizationJob.perform_async(activities_to_synchronize.to_json)
            end
        end
    end
end