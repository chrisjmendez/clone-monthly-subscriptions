class FixStripeUserColumnName < ActiveRecord::Migration
  def change
    change_table :subscriptions do |t|
      t.rename :stripe_user, :stripe_user_id
    end    
  end
end
