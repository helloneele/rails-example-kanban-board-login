class User < ApplicationRecord

  def self.find_or_create_with_omniauth(auth)
    # look for an existing authorisation
    # provider + uid uniquely identify a user
    User.find_or_create_by!(
      provider: auth['provider'],
      uid:      auth['uid']
    )
  end

  def name
    "#{uid}@#{provider}"
  end

end
