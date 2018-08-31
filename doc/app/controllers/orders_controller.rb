class OrdersController < ApplicationController
  def create
    # Get the products
    @product = Product.find_by_slug(params[:product_slug])
    # Merge params
    @order = @product.orders.build(order_params.merge(email: params[:stripeEmail]))
    # Set product price
    @product_price = @product.price * 100

    customer = Stripe::Customer.create(
      email:  params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer:    customer.id,
      amount:      @product_price.to_i,
      description: @product.title,
      currency:    'usd'
    )

    if @order.save
      # Save data, do stuff
      # Redirect
    else
      flash[:error] = "Something went wrong, try again."
      # Redirect
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    # Do somethin
  end

  private

  def order_params
    params.require(:order).permit(:email)
  end
end
