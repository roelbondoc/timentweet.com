task :cron => :environment do
  Tweet.deliver
end

