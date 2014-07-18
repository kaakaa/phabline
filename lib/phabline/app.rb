require 'sinatra'

module Phabline
	class App < Sinatra::Base
		get '/' do
			p 'Hello phabline'
		end
	end
end
