class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Deconectare efectuata cu succes."
  end
  
  
  def new
  end
 
 
 def create
   user = User.find_by(email: params[:email])
   
   if user.present? && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to root_path, notice: "Conectat cu succes !"
   else
     flash[:alert] = "Email sau parola invalid !"
     render :new
   end
 end
 
  
  
end
