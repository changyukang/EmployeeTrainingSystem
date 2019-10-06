class AddColumnDobUsers < ActiveRecord::Migration[6.0]
  def change
     add_column :users, :DoB, :string
  end
end
