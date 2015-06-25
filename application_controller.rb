require 'bundler'
Bundler.require
# require_relative "/models/emails.rb"
class MyApp < Sinatra::Base
	
	get "/" do
		erb :index
	end
	get '/begin.erb' do
		erb:begin
  end
end