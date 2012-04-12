class AddDescriptionToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :description, :string

  end
end
