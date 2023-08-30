namespace :user do
  desc "Enrinch all of the users with the fake API"
  task update_all: :environment do
    users = User.all
    puts "Enqueing a total of #{users.size} for update"
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end
end
