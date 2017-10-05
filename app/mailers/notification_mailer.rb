class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.following_solicitation.subject
  #
  def following_solicitation(user, current_user)
    @user = user
    @greeting = "Hi #{@user.name}, #{current_user.name}"

    mail to: @user.email, subject: 'Following solicitation'
  end
end
