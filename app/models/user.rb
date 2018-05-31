class User < ApplicationRecord
  def self.find_or_create_user(auth)
    where(provider: 'instagram', uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = 'instagram'
      user.uid = auth.user.id
      user.first_name = auth.user.full_name
      user.profile_picture = auth.user.profile_picture
      user.access_token = auth.access_token
      user.save!
    end
  end
end
