class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])   
  end
  def index 
    @users =User.all      #it is grabing all the users deatails from the users table

  end
  def new
    
  end
  
  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :phone_number))
    @user.save
    redirect_to @user
    
  end

  # def view 
  # @user=BankAccount.find(params[:id])
  # end
  
  
  
end