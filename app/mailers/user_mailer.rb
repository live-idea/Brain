class UserMailer < ActionMailer::Base
  default from: "exe.shka.exe@gmail.com"


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.hello.subject
  #
  def hello(user)
    @greeting = "Hi"
    attachments["hello.zip"] = File.read("c:\archiv.zip")
    mail to: user.email
    
  end

end
