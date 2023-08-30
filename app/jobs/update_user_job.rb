class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    puts "calling an API to enrich the user"
    ## make the api call
    sleep 2
    puts "Done! #{user.email} is now enriched!"
  end
end
