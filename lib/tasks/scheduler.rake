desc "This task is called by the Heroku scheduler add-on"
task :generate_messages => :environment do
  puts "Generating messages..."
  Message.generate
  puts "done."
end
