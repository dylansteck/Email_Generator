require 'bundler'
Bundler.require
require_relative "models/message_type.rb"
require_relative "models/messages.rb"
class MyApp < Sinatra::Base
	
	get '/' do
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
		@answer =(params["email"])
		@email_types= ["Apology Email", "Thank You Email", "Date Proposal Email", "Hello to an Old Friend Email", "Homework Excuse Email", "Extention Email for a Project or Due Date", "Happy Birthday Email"]
		@answerone = (params["name"])
		@answertwo = (params["nametwo"])
		@answerfour = (params["ending"])
		@answeremail = (params["emailr"])
		
		@apology= [
	Emails.new("Dear #{@answerone}, I wanted to write you an email to apologize. What I did was a terrible thing, and horribly inappropriate. It was not a proper thing to do. Nothing I could say can justify my actions, but I can try to learn from my bad experience for the better of both of us. I hope that you forgive for this terrible sin that I made. #{@answerfour}, #{@answertwo}."),
			
	Emails.new("Dear #{@answerone}, I am writing this email as a response to my unfortunate actions which have affected you in a negative way. Me acting in the way I did was not at all appropriate and I take full responsibility for my actions. The thing i did goes against everything you have done for me and i hope that we can throw this little incident in the past and move on. #{@answerfour},#{@answertwo}.")
			Emails.new ("Dear #{@answerone}, This letter is being written to apologise for the decisions I have made which have made you feel true anger towards me. I regret nothing more in life than what I have done to you. It was wrong, stupid and immature and you do not deserve any of the grief and anger I have caused you. I hope that after this we can move on with our lives whether you forgive me or not. #{@answerfour}, #{@answertwo}")
			]
		
 			@thankyou= [
				Emails.new("Dear #{@answerone}, I wanted to write you this letter to thank you. The amazing opportunity which you have provided me has brought a great deal of success to my life, and there are no words which can express my gratefulness. I hope you have a wonderful day. #{@answerfour} , #{@answertwo}.")
		]
		@date= [
			Emails.new("Hi #{@answerone}, Roses are red, grass is green, you are very nice, will you go on a date with me? #{@answerfour} , #{@answertwo} ")
			]
		@hello= [
			Emails.new("Greetings, #{@answerone}. Do you remember me? I'm #{@answertwo}. We used to know each other. It was a pleasure to run in to you the other day. I hope that we can catch up soon! #{@answerfour} ,  #{@answertwo}.")
			]
			
		@homework=[
			Emails.new("Dear #{@answerone}, I am sorry that I do not have my homework. Today was a very busy day, and I did not have time to finish my work, even though I tried my hardest to make time to complete the task. It would be a great help to me if I had a little more time to do the assignment and possibly meet with you for help. Thank you! #{@answerfour} , #{@answertwo}")
			Emails.new("Dear #{@answerone}, I am sorry that I did not complete all of my homework. I knew what I was supposed to do, and had written these commitments in my binder, but I chose to do other things instead of the assignments. Next time I will manage my time much better. #{@answerfour},  #{@answertwo}.")
			]
		@extension=[
			Emails.new("Dear #{@answerone}, I am writing this email to cordially request the extension of my project. Though I have been hard at work, there are a few aspects I still need to touch on, and it would be a great help if I was granted more time, so I can produce my best work. #{@answerfour} , #{@answertwo}. ")
			]
		@birthday=[
			Emails.new("Dear #{@answerone}, Happy Birthday! I hope that you enjoy a merrifull day, and that you have health and happiness for you and your family during your next year! Have a great birthday! #{@answerfour} ,#{@answertwo}")
			Emails.new("Dear")
			
			]
			erb :end
	end

end