class GiftMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gift_mailer.confirmation.subject
  #
  def confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gift_mailer.information.subject
  #
  def information
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

def confirmation(order_gift)
    @order_gift = order_gift
    mail(
      to:       @order_gift.email,
      subject:  "Votre carte cadeau - Graîne de mômes"
    )
  end
  def information(subscription)
    @subscription = subscription
    mail(
      to:       "emrose351@gmail.com",
      subject:  "Nouvelle carte cadeau"
    )
  end
contact@ecolibribox.com
