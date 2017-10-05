# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/following_solicitation
  def following_solicitation
    NotificationMailer.following_solicitation
  end

end
