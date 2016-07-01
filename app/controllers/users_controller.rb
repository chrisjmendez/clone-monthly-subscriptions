class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  
  def info
    current_customer
  end
  
  def charge
    customer = Stripe::Customer.create( 
      source: params['stripeToken'],
      plan:   'subscription-bronze', 
      email:  current_user.email 
    )
    
    # Get the Stripe user id
    current_user.subscription.stripe_user_id = customer.id
    # Confirm the user's account is now active
    current_user.subscription.active = true

    current_user.subscription.save
    
    redirect_to users_info_path
  end  
  
  def cancel_subscription
    @stripe_subscription = current_customer
    
    logger.warn {"UsersController::cancel_subscription\n #{@stripe_subscription.inspect}"}
    
    @stripe_subscription.delete
    
    #Set the user's subscription back to false
    current_user.subscription.active = false
    current_user.subscription.save
    
    redirect_to users_info_path    
  end


  private 
  def current_customer
    @subscription = current_user.subscription
    
    #logger.warn {"UsersController:: #{@subscription.attributes.inspect}"}
    logger.warn {"UsersController::current_customer\n #{@subscription.stripe_user_id}"}
    
    if @subscription.active
      @stripe_customer = Stripe::Customer::retrieve(@subscription.stripe_user_id)
      @stripe_subscription = @stripe_customer.subscriptions.first
    end
  end
  
end