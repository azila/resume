class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'order_email'

  def order_email(order)
    @order = order
    mail(to: 'korotchenko.liza@gmail.com', subject: 'New order')
  end
end
