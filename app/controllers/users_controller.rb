class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])  
    user = User.find(params[:id])
    user =User.find(params[:id])
    @address=user.address
   # user = User.find(params[:id])
    @bank_account=user.bank_accounts

  end
  def index 
    @users =User.all
    #@bank_accounts=BankAccount.all 
         #it is grabing all the users deatails from the users table

  end
  def new
    @user=User.new
    2.times { @user.bank_accounts.build }
       
    @user.build_address
   
   
    #user=User.new
    #@bank_account=user.bank_accounts
    #@address =user.address

     # this is a new edit (above two lines)
   end
  def edit 
    @user = User.find(params[:id])
    
    #user =User.find(params[:id])
    
    #@address = user.address
    #@bank_account = user.bank_accounts
  end 

  def create
  
    @user = User.new(user_params)
    #white listing the users required attributes
    
    if @user.save
      flash[:notice] = 'User was saved.'
      redirect_to users_path
    else 
      flash[:notice] = 'User was not saved.'
      render :new
    end

    
    
    
  end
  
  def update
    
    @user = User.find(params[:id])
    @user.update(user_params)
    
    #white listing the users required attributes
    
    #@user.save
    
    #raise params.inspect
    
    redirect_to users_path
  end

  def destroy
  @user = User.find(params[:id])
  @user.destroy
  end
  
  private

  def user_params 
    params.require(:user).permit(:id, :first_name, :last_name, :phone_number, address_attributes: [:id, :address, :user_id], bank_accounts_attributes: [:id, :account_number, :ifsc_code, :branch_name, :user_id])
  end
  def user_params1 
    params.require(:user).permit(:first_name, :last_name, :phone_number, address_attributes: [:address], bank_accounts_attributes: [:account_number, :ifsc_code, :branch_name])
  end
end