class OrdersController < ApplicationController

  def send_mail
    order = Order.new
    order.name = params[:name]
    order.email = params[:email]
    order.choice = params[:choice]
    order.message = params[:choice]
    UserMailer.order_email(order).deliver
    flash.now[:event] = "<script>_gaq.push(['_trackEvent', 'Order', 'Made'])</script>".html_safe
    redirect_to root_path
  end

end