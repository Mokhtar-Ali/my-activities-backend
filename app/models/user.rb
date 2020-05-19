class User < ApplicationRecord
    has_many :activities
    has_many :messages
    has_many :reviews
    has_many :participants

    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    
    # validates :username, :name, :password, length: { minimum: 4 }    
    # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    
    
    
  
end
