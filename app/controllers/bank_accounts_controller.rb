
#these all are todays edit
class BankAccountsController < ApplicationController
    def index
        @bank_accounts = BankAccount.all
    end
   
    def show
       user = User.find(params[:id])
       @bank_account=user.bank_accounts
    end
end 
