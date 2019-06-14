class ReceiptMailer < ApplicationMailer

  def receipt_mail(order)
    @order = order
    mail(to: @order.email, subject: 'Order confirmation')
  end
end
