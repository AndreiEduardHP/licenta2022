class AdminPageController < ApplicationController
  def index
    
  end
  
  
  def showuser
    @user = User.all
    
  end
  
 
  
  
end
