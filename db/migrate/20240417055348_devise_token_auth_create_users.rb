class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[7.1]
  def change
    ## Required
    add_column :users, :provider, :string, :null => false, :default => "email"
    add_column :users, :uid, :string, :null => false, :default => ""

    ## Database authenticatable
    add_column :users, :encrypted_password, :string, :null => false, :default => ""

    ## Recoverable
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime

    ## Rememberable
    add_column :users, :remember_created_at, :datetime

    ## Trackable
    add_column :users, :sign_in_count, :integer, :default => 0, :null => false
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip, :string
    add_column :users, :last_sign_in_ip, :string

    ## Tokens
    add_column :users, :tokens, :json

    add_index :users, [:uid, :provider],     :unique => true
    add_index :users, :reset_password_token, :unique => true
  end
end
