namespace :model do
  desc "create name if name is nil from email"
  task create_name_from_email: :environment do
    User.all.each do |user|
      if user.name.nil?
        match = /(.*)(?=@)/.match(user.email)
        if match && match[0]
          user.name = match[0].split(".").join(" ")
          user.save
        end
      end
    end
  end
end
