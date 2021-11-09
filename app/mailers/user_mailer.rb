class UserMailer < ApplicationMailer

  default from: "engintech6435555@gmail.com"




  def send_email(user)
    @message = "Hello "
    @user = user
    mail to: user.email, subject: "Form Available for Review"
  end


  def manager_fill_form_for_employee(user)
    @message = "Employeen Filled the form. Now You can Review the the Employee"

    @user = user
    @manager = User.find_by(id:@user.assigned_manager)
    mail to: @manager.email, subject: "Review the Employee"
  end


  def hr_give_remarks_to_employee(user)
    @message = "Manager Review the employee now you can give Remarks to employee"
    @user = user
    @hr = User.find_by_role('HR')
    mail to: @hr.email, subject: "Give Remarks"
  end


  def notify_to_employee(email)
      mail to: email, subject:"Time To review yourself"
  end
end
