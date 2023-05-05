namespace :test_rake do
    desc "testing rake"
task :test_rake => :environment do
    puts Employee.last.first_name
    puts "hi"
end
end