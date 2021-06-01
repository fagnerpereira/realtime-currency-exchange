schedule_file = 'config/schedule.yml'

puts "ola scheduler"
if File.exist?(schedule_file) && Sidekiq.server?
  puts "ola scheduler"
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
end
