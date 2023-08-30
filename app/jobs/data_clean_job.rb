class DataCleanJob < ApplicationJob
  queue_as :default

  def perform
    puts "Deleting old users"
    User.all.each do |user|
      if user.created_at < Date.today - 60
        user.destroy
        puts "#{user.email} is deleted"
      end
    end
    # Do something later
  end
end
