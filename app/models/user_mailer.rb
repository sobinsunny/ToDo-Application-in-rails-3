class UserMailer < ActionMailer::Base
   default :from => "sobin@foradian.com"
def welcome_email(user)
  @account=user.email
  mail(:to => user.email,:subject => "welcome to my todo site")
end
end