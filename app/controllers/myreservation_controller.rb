class MyreservationController < ApplicationController
  
  
  
  
  def index
   @user = Current.user
   @reservations = @user.reservations
   
  
   
  end
  
  
  
  def showall
    @reservations = Reservation.all
    
    
    @count = Reservation.all.count
      
  end
 
  
  
end
