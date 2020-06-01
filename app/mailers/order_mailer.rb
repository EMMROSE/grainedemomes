  class OrderMailer < ApplicationMailer

# Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gift_mailer.confirmation.subject
  #
  def confirmation(order)
    @order = order
    mail(
      to:       @order.email,
      subject:  "Votre commande sur la boutique Graîne de mômes"
    )
  end
  def information(order)
    @order = order
    mail(
      to:       'bonjour@grainedemomes.com',
      subject:  "Nouvelle commande sur la boutique"
    )
  end
end
