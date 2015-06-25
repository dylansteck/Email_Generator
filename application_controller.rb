require 'bundler'
Bundler.require
require_relative "models/emails.rb"
require_relative "models/messages.rb"
class MyApp < Sinatra::Base
	
	get "/" do
		erb :index
	end
	get '/begin.erb' do
		@email_types= ["Apology Email", "Thank You Email", "Date Proposal Email", "Hello to an Old Friend Email", "Homework Excuse Email", "Extention Email for a Project or Due Date", "Happy Birthday Email"]
		erb :begin
  end
	get '/end.erb' do
		erb :end
end
			post '/end.erb' do
				erb :end
  end
end