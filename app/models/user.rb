class User<ApplicationRecord

    has_many :bank_accounts, dependent: :destroy 
    has_one :address, dependent: :destroy 
    
    accepts_nested_attributes_for :address, allow_destroy: true
    accepts_nested_attributes_for :bank_accounts, allow_destroy: true

##this is a prototype for association association
end 
