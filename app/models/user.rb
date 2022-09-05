#email:String
#password_digest:String
#
#password:string virtual
#passwprd_confirmation:string virtual
class User < ApplicationRecord
    has_many :reservations
    has_many :trips, through: :reservations
    has_one_attached :image
    
    
   
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    has_secure_password
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX , message: "email invalid"},
                length: { maximum: 255 }
                
                
           
                
    
end
