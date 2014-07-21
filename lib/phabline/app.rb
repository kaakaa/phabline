require 'compass'
require 'haml'
require 'sinatra'
require File.expand_path('action', File.dirname(__FILE__))
require File.expand_path('mysql', File.dirname(__FILE__))

module Phabline
	class App < Sinatra::Base
		configure do
			Compass.configuration do |config|
				config.project_path = File.expand_path('../../', File.dirname(__FILE__))
				config.sass_dir = "views/scss"
			end
			set :sass, Compass.sass_engine_options
			set :scss, Compass.sass_engine_options
			set :public_folder, File.expand_path('../../public', File.dirname(__FILE__))
			set :views, File.expand_path('../../views', File.dirname(__FILE__))
		end

		get '/' do
			@actions = []
			@actions << Action.new("title1","content","link")
			@actions << Action.new("title2","content","link")
			haml :codepen
		end

		get '/stylesheets/:name.css' do
			scss :"scss/#{params[:name]}"
		end

		get '/test' do
			accessor = MySqlAccessor.new
			accessor.test
		end
	end
end
