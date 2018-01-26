class AddFirstLastNamesTokenToUserTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :authentication_token_created_at, :datetime
  end
end
