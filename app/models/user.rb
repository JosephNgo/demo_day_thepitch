class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :skype, :twitter, :zipcode
  
  has_many :pitches
  
   def full_name
      return first_name + " " + last_name
    end
  
end
