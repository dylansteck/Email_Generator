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
	Emails.new("Dear #{@answerone}, I am writing this email as a response to my unfortunate actions which have affected you in a negative way. Me acting in the way I did was not at all appropriate and I take full responsibility for my actions. The thing i did goes against everything you have done for me and i hope that we can throw this little incident in the past and move on. #{@answerfour},#{@answertwo}."),
	Emails.new("Dear #{@answerone}, This letter is being written to apologise for the decisions I have made which have made you feel true anger towards me. I regret nothing more in life than what I have done to you. It was wrong, stupid and immature and you do not deserve any of the grief and anger I have caused you. I hope that after this we can move on with our lives whether you forgive me or not. #{@answerfour}, #{@answertwo}")
			]
		
 			@thankyou= [
				Emails.new("Dear #{@answerone}, I wanted to write you this letter to thank you. The amazing opportunity which you have provided me has brought a great deal of success to my life, and there are no words which can express my gratefulness. I hope you have a wonderful day. #{@answerfour} , #{@answertwo}."),
				Emails.new("Dear #{@answerone}, Your gratitude and kindness over the years has brought happiness and joy to my life. I hope you know how important you are to me and how much of a positive impact you have on my life. #{@answerfour},  #{@answertwo}."),
		Emails.new("Dear #{@answerone}, Thank you for expressing your kindness to me by sending me a wonderful gift. Your gift has blown all of the other ones out of the water, and my words can not express enough!  #{@answerfour},  #{@answertwo}.")
		]
		@date= [
			Emails.new("Hi #{@answerone}, Roses are red, grass is green, you are very nice, will you go on a date with me? #{@answerfour} , #{@answertwo} "),
			Emails.new("Hello #{@answerone}, I think that you are a truly amazing person. You are eautiful on the inside and the outside, and it would be an honor if I could take you out on a date. #{@answerfour}, #{@answertwo}."),
			Emails.new("Hey #{@answerone}, How are you! I think you are a wonderful person and I think we should get to know each other some more. I propose that one of these days I can take you out to dinner and we could catch a movie after. Sounds good? Just reply back when you wanna meet up! :) #{@answerfour},  #{@answertwo}.")
			]
		@hello= [
			Emails.new("Greetings, #{@answerone}. Do you remember me? I'm #{@answertwo}. We used to know each other. It was a pleasure to run in to you the other day. I hope that we can catch up soon! #{@answerfour} ,  #{@answertwo}."),
			Emails.new("Hello, #{@answerone}. It was a pleasure running into you on the street. I can't believe how long it has been since I saw you last! Hopefully, we can meet up for coffee sometime. Hope all is well! #{@answerfour}, #{@answertwo}."),
			Emails.new("What's up #{@answerone}? Long time no see pal! How have you been? What did you do after High School? I hope that we can catch up some time; it would be a blast! Hope to see you soon! #{@answerfour}, #{@answertwo}.")
			]
			
		@homework=[
			Emails.new("Dear #{@answerone}, I am sorry that I do not have my homework. Today was a very busy day, and I did not have time to finish my work, even though I tried my hardest to make time to complete the task. It would be a great help to me if I had a little more time to do the assignment and possibly meet with you for help. Thank you! #{@answerfour} , #{@answertwo}"),
			Emails.new("Dear #{@answerone}, I am sorry that I did not complete all of my homework. I knew what I was supposed to do, and had written these commitments in my binder, but I chose to do other things instead of the assignments. Next time I will manage my time much better. #{@answerfour},  #{@answertwo}."),
			Emails.new("Dear #{@answerone}, I have took it upon myself to write this letter because I will not be able to hand in the homework assignment in a timely manner because of certain circumstances. I lost the homework assignment and coincidentally my internet went down in the same night which prevented me from contacting a classmate to obtain the assignment. I am very sorry for not being able to complete the assignment, and I will give it to you as soon as I do complete it. #{@answerfour},#{@answertwo}. ")
			]
		@extension=[
			Emails.new("Dear #{@answerone}, I am writing this email to cordially request the extension of my project. Though I have been hard at work, there are a few aspects I still need to touch on, and it would be a great help if I was granted more time, so I can produce my best work. #{@answerfour} , #{@answertwo}. "),
			Emails.new("Dear #{@answerone}, I have been working hard on my project, and I was wondering if I could get a small extension to my due date. I know that my work needs to be completed by that time, but I feel like the work I could produce would be better if I got more time. I hope that you understand and know my situation. #{@answerfour}, #{@answertwo}."),
			Emails.new("Hello #{@answerone}, I am so happy that I get to work on this project. But, I feel like I am behind on some of my work. I was wondering if I could meet with you to get some help, and hopefully get an extended due date. I am trying my hardest, and I hope that you grant me an extension. Thank you so much! #{@answerfour}, #{@answertwo}.")
			]
		@birthday=[
			Emails.new("Dear #{@answerone}, Happy Birthday! I hope that you enjoy a merrifull day, and that you have health and happiness for you and your family during your next year! Have a great birthday! #{@answerfour} ,#{@answertwo}."),
			Emails.new("Dear #{@answerone}, It's your birthday!!!! You are a great person and I'm sure you will have an amazing birthday! I am so happy that you are one of my friends! Have a good one! #{@answerfour}, #{@answertwo}."),
			Emails.new("Hey #{@answerone}, Happy Birthday! You are such an amazing friend, and you are so caring. I hope that your birthday is spent with the ones that you love, because they really care for you and have a huge impact on your life, like you do mine. #{@answerfour}, #{@answertwo}.")
			]
			erb :end
	end

end