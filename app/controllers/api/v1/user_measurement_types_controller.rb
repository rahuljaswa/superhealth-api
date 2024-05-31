module Api
    module V1
        class UserMeasurementTypesController < ApplicationController
            before_action :set_object, only: [:show, :update, :destroy]
        end
    end
end
