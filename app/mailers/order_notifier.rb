class OrderNotifier < ApplicationMailer

 default from:'Stigahlíð Store <store@stigahlid.com>'

  def received(order)
    @order = order


    mail to: order.email, subject: 'Store Order'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
     @order = order


    mail to: order.email, subject: 'Order shipped'
  end
end
