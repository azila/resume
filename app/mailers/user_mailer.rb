class UserMailer < ActionMailer::Base
  default to: 'great.resume.agency@gmail.com'

  def order_email(order)
    @order = order
    mail(from: order.email, subject: 'New order')
  end
end
