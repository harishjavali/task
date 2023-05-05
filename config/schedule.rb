# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
# require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
# require_relative '../lib/tasks/'
# require './config/boot'
# require './config/environment'
# require './lib/big_query/big_query_load'  
set :output, "./log/cron_log.log"
every 1.minute do
    puts "hello"
    command "ruby lib/big_query/big_query_load.rb"
    puts "done"
    # SCRIPT = Rails.root.to_s + "lib/big_query/big_query_load.rb"
    # system "ruby #{SCRIPT}"
    # rake "data:update_bigquery_data"
    # rake BigQueryLoad.hello
    # command "echo 'Hello, world!' >> #{Rails.root}/public/myfile.txt"
  end