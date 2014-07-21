require 'sinatra'
require File.expand_path('action', File.dirname(__FILE__))

module Phabline
	class App < Sinatra::Base
		set :public_folder, File.expand_path('../../public', File.dirname(__FILE__))
		set :views, File.expand_path('../../views', File.dirname(__FILE__))

		get '/' do
			@actions = []
			@actions << Action.new("title1","content","link")
			@actions << Action.new("title2","content","link")
			haml :timeline
		end
	end
end
