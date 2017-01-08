class User < ApplicationRecord

  def self.find_or_create_with_omniauth(auth)
    # look for an existing authorisation 
    # provider + uid uniquely identify a user
    user = User.find_or_create_by( 
           provider: auth['provider'], 
           uid:      auth['uid'] 
    )
    user.save!
    return u
  end  
end
