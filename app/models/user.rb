class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.firstname = auth.info.first_name
        user.lastname = auth.info.last_name
        user.email = auth.info.email
        user.profileimage = auth.info.image
        user.password = Devise.friendly_token[0,20]
        user.dob = auth.extra.raw_info.birthday
        user.nationality = "INDIA"
        user.gender = auth.extra.raw_info.gender
      end
  end

end
