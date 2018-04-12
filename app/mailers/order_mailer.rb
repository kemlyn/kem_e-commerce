class OrderMailer < ApplicationMailer
  def order_recieved(order)
    @order = order
    mail(to: @order.user.email, subject: 'order was completed!')
  end
end
