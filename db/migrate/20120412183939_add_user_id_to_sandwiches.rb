class AddUserIdToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :user_id, :integer

  end
end
