require "mailgun"

Mailgun.configure do |config|
  config.api_key = 'key-6ee10572908395af2bc386689f96d183'
  config.domain = 'sandboxe89a397687a344759a6dce57f0507305.mailgun.org'
end

@mailgun = Mailgun()

parameters = {
	:to => @answeremail,
	:subject => "Your Email from:" @answertwo,
  :text => @answer,
  :from => "postmaster@sandboxcf9fe063f5ce4cafb2806f3d47decb1b.mailgun.org"
}
@mailgun.messages.send_email(parameters)