class FriendNotifierMailer < ApplicationMailer
  def inform(user, destination_email)
    @user = user
    mail(to: destination_email, subject: "#{@user.name} says you've changed")
  end
end
