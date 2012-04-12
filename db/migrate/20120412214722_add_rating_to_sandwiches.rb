class AddRatingToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :rating, :integer

  end
end
