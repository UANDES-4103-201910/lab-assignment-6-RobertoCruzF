class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #complete this method
    	user= User.create!(user_params)
    	redirect_to root_path
    	if user.save
    	  redirect_to user

    	else
 
    	  render "new"
    	end	

    	def after_sign_in_path_for(resource)
  			user_type_selection_path # whatever route in your app manages the selection
		end

	end
  	private
  
    # Use callbacks to share common setup or constraints between actions.
  	  def set_user
  	    @user = User.find(params[:id])
  	  end

    # Never trust parameters from the scary internet, only allow the white list through.
  	  def user_params
  	    params.permit(:name, :last_name, :email, :password, :phone)
  	  end

end
