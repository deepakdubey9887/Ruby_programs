class User<ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true 
    #validates_associated :bank_accounts
    #validates_associated :address

    has_many :bank_accounts, dependent: :destroy 
    has_one :address, dependent: :destroy 
    
    accepts_nested_attributes_for :address, allow_destroy: true
    accepts_nested_attributes_for :bank_accounts, allow_destroy: true

##this is a prototype for association association
end 
