class BankAccount<ApplicationRecord
    validates :account_number, presence: true
    validates :ifsc_code, presence: true
    validates :branch_name, presence: true
 
    belongs_to :user ,optional: true
end 
