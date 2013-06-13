class CreateSubscriptionPlans < ActiveRecord::Migration
  def change
    create_table :subscription_plans do |t|
      t.float :price
      t.boolean :daily

      t.timestamps
    end
  end
end
