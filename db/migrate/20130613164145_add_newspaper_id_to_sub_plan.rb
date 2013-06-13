class AddNewspaperIdToSubPlan < ActiveRecord::Migration
  def change
    add_column :subscription_plans, :newspaper_id, :integer
  end
end
