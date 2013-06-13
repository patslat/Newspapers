require 'bcrypt'
class User < ActiveRecord::Base
  attr_accessible :name, :password, :session_token, :subscription_plan_ids
  validates :name, :presence => true

  has_many :subscriptions
  has_many :subscription_plans,
           :through => :subscriptions

  has_many :newspapers,
           :through => :subscription_plans


  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def authenticate_password(password)
    BCrypt::Password.new(self.password_digest) == password
  end

  def reset_session_token
    self.session_token = SecureRandom.urlsafe_base64(16)
  end
end
