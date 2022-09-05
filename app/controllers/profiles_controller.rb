class ProfilesController < ApplicationController
   before_action :require_user_logged_in!
  
  def edit
    
  end
  
  

  
  def update
    if Current.user.update(phone_number_paramas)
      redirect_to root_path, notice: "profile updated"
    else
      render :edit
    end
  end
  
  
  private
  def phone_number_paramas
    params.require(:user).permit(:phone_number, :first_name, :last_name, :image)
  end
end
