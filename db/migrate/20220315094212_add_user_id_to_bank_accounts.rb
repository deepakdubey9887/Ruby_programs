class AddUserIdToBankAccounts < ActiveRecord::Migration[7.0]
  def change
  add_column :bank_accounts,:user_id,:int
  end
end
