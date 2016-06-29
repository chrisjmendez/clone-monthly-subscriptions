class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  
  def info
    @subscription = current_user.subscription
    if @subscription.active
      @stripe_customer = Stripe::Customer::retrieve(@subscription.stripe_user)
      @stripe_subscription = @stripe_customer.subscriptions.first
    end
  end
  
  def charge
    token = params['stripeToken']
    customer = Stripe::Customer.create( 
      source: token, 
      plan: 'subscription-bronze', 
      email: current_user.email 
    )
    
    current_user.subscription.stripe_user = customer.id
    current_user.subscription.active = true
    current_user.subscription.save
    
    redirect_to users_info_path
  end  
end
