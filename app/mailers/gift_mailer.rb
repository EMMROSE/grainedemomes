class GiftMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gift_mailer.confirmation.subject
  #
  def confirmation(order_gift)
    @order_gift = order_gift
    mail(
      to:       @order_gift.email,
      subject:  "Votre carte cadeau - Graîne de mômes"
    )
  end
  def information(order_gift)
    @order_gift = order_gift
    mail(
      to:       'bonjour@grainedemomes.com',
      subject:  "Nouvelle carte cadeau"
    )
  end
end

