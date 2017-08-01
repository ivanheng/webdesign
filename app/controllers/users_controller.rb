class UsersController < ApplicationController
	def new
		@user = User.new(name: "Michael Hartl", email: "mhartl@example.com")
	end
	def sign_up_error
  		
  	end

  	def modal
  		
  	end

	def create
		 @user = User.new(user_params)

		 temp_password = String.new(@user.password)
		 temp_confirm = String.new(@user.confirm)

	    if temp_password == temp_confirm
	    	@user.save
	      	redirect_to @user
	    else
	      render 'sign_up_error'
	    end
	end
	def update
		
	end
	def show
    	@user = User.find(params[:id])
  
  	end
  	private
  	def user_params
   	 	params.require(:user).permit(:name, :email, :password,
                                 :confirm)
  	end
end
