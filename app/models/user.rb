class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
   has_one :subscription
   
   # This allows us to create a subscription after the user has been created
   #FIXME: An alternative idea is to make this edit in Devise > "Configuring Controllers"
   after_create :create_subscription
   def create_subscription
     #Make sure we don't overwrite an existing subscription
     Subscription.create(user_id: id) if subscription.nil?
   end
end
