class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :phone_number
      t.string :phone_number_verification_code
      t.datetime :phone_number_verification_code_sent_at
      t.datetime :phone_number_verified_at
      t.string :email, null: false, index: {unique: true}
      t.string :email_verification_code
      t.datetime :email_verification_code_sent_at
      t.datetime :email_verified_at
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :confirmation_token
      t.string :unconfirmed_email
      t.string :image_url
      t.timestamps
    end
  end
end
