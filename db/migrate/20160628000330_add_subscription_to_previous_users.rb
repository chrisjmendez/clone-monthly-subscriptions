class AddSubscriptionToPreviousUsers < ActiveRecord::Migration
  #Only execute when a new database has been created 
  def up
    User.all.each do |user|
      user.create_subscription
    end
  end
end
