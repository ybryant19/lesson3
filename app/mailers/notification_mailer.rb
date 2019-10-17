class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "bryant.yvette@gmail.com")
         subject: "Acomment has been added to your place")
  end
end
