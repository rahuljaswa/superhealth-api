require 'sidekiq'
 
class MeasurementSynchronizationJob
  include Sidekiq::Job

  sidekiq_options retry: false
 
  def perform(measurements_to_synchronize)
    parsed = JSON.parse(measurements_to_synchronize)
    Measurement.synchronize(parsed)
  end
end
