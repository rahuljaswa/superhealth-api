require 'sidekiq'
 
class ActivitySynchronizationJob
  include Sidekiq::Job

  sidekiq_options retry: false
 
  def perform(activities_to_synchronize)
    parsed = JSON.parse(activities_to_synchronize)
    Activity.synchronize(parsed)
  end
end
