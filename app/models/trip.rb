class Trip < ApplicationRecord
    has_many :reservations
    has_many :users, through: :reservations
    has_one_attached :avatar
    has_many_attached :images
   
 
    
  
end
