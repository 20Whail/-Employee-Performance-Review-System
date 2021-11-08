class UserMailer < ApplicationMailer

  default from: "engintech6435555@gmail.com"




  def send_email(user)
    @message = "Hello "
    @user = user
    mail to: user.email, subject: "Form Available for Review"
  end


  def name_update(user)
    @message = "Yor Name is update"
    @user = user
    mail to: user.email, subject: "Name update"
  end
end
