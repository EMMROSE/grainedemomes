# Preview all emails at http://localhost:3000/rails/mailers/gift_mailer
class GiftMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/gift_mailer/confirmation
  def confirmation
    GiftMailer.confirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/gift_mailer/information
  def information
    GiftMailer.information
  end

end
