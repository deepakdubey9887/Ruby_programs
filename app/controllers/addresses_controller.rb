class AddressesController < ApplicationController
    def show
        user = User.find(params[:id])
       @address=user.address
    end
end 