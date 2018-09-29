class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    # + only works for gmail accounts
    mail(to: @place_owner.email,
      subject: "A comment has been added to #{@place.name}")
  end
end
