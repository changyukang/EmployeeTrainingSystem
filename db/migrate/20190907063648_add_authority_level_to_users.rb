class AddAuthorityLevelToUsers < ActiveRecord::Migration[6.0]
  def change
  	#0=normal user, 1=manager
    add_column :users, :authority_level, :integer, default: 1
  end
end
