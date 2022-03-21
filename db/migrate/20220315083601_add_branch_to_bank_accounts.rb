class AddBranchToBankAccounts < ActiveRecord::Migration[7.0]
  def change
  add_column :bank_accounts, :branch_name, :string
  end
end
