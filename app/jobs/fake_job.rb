class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "I'm starting the fake job!"
    sleep 3
    puts "Job completed at #{Time.now}"
  end
end
