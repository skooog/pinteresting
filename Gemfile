source 'https://rubygems.org'

ruby '2.1.2'

	gem 'rails', '>= 4.1.6'
	gem 'bootstrap-sass', '~>3.2.0'
	#gem 'sass-rails', '~> 4.0.3'
	gem 'autoprefixer-rails' #suggested by bootstrap-sass installation readme
	gem 'sprockets-rails' # , '=2.0.0.backport1' 
	gem 'sprockets', '=2.11.0'  #'~>2.8' #'=2.2.2.backport2' #same
	gem 'sass-rails', '~>4.0.2' #to fix nil nil class error #github: 'guilleiguaran/sass-rails', branch: 'backport'
		#backport sass-rails version #changed from 4.0.0 to 4.0.2 to try to fix bootstrap weirdness
	gem 'uglifier', '~> 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
	gem 'jquery-rails'
	gem 'turbolinks'
	gem 'jquery-turbolinks'
	gem 'jbuilder', '~> 2.0'

	gem 'devise', "~> 3.1.0.rc2"
	gem 'paperclip', '~> 3.0'  
	gem 'aws-sdk' #need version?
	gem 'masonry-rails', '~> 0.2.0'
	gem 'will_paginate', '~> 3.0'
	gem 'will_paginate-bootstrap'
	gem 'nokogiri', '~> 1.6.3.1'

	gem 'hoe', '~> 3.7'
	gem 'hoe-bundler', '>= 1.1'
	gem 'hoe-debugging', '>= 1.0.3'
	gem 'hoe-gemspec', '>= 1.0'
	gem 'hoe-git', '>= 1.4'
	gem 'minitest', '>= 2.2.2'
	gem 'racc', '>= 1.4.6'
	gem 'rake', '~>10.3.2'
		#changed rake version-- double-check this
	gem 'rake-compiler', '~> 0.9.2'
	gem 'rdoc', '~> 4.0'
	gem 'rexical', '>= 1.0.5'
	gem 'bcrypt'

	gem 'unicorn' #use heroku's preferred server instead of webrick
	gem 'pg' #because sqlite3 breaks heroku

group :development, :test do
	gem 'better_errors' #these are for debugging per RailsCasts article
	gem 'binding_of_caller' 
end

group :production do
	#both of these added to main list of gems above
#gem 'pg' #need version?
gem 'rails_12factor' # trying adding this to production to make bootstrap work on heroku

end

group :doc do
	gem 'sdoc', require: false

end
