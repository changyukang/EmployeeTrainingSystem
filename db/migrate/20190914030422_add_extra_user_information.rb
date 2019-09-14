class AddExtraUserInformation < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :jobTitle, :string
  end
end
