# fyi to start unicorn server, type $unicorn_rails
# server default for unicorn is localhost:8080 (WEBrick was localhost:5000))
#instructions from https://devcenter.heroku.com/articles/getting-started-with-rails4
worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
timeout 15
preload_app true

before_fork do |server, worker|
	Signal.trap 'TERM' do
		puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
		Process.kill 'QUIT', Process.pid
	end

	defined?(ActiveRecord::Base) and
		ActiveRecord::Base.connection.disconnect!
	end

after_fork do |server, worker|
	Signal.trap 'TERM' do
	puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
	end

	defined?(ActiveRecord::Base) and
	ActiveRecord::Base.establish_connection
	end		

#instructions from heroku docs:
## config/unicorn.rb
# worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
# timeout 15
# preload_app true

# before_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
#     Process.kill 'QUIT', Process.pid
#   end

#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.connection.disconnect!
# end

# after_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
#   end

#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.establish_connection
# end