class User < ActiveRecord::Base
  
  validates :password, length: { minimum: 6, allow_nil: true }, on: :create
  validates :password_digest, presence: { message: "Password Can't Be Blank" }
  before_validation :ensure_session_token
  
  def ensure_session_token
    self.session_token = SecureRandom.urlsafe_base64 unless self.session_token
  end
  
  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end
  
  def password=(secret_password)
    @password = secret_password
    self.password_digest = BCrypt::Password.create(@password)
  end
  
  def password
    @password
  end
  
  def is_password?(secret_password)
    BCrypt::Password.new(self.password_digest).is_password?(secret_password)
  end
  
  def self.find_by_credentials(email, secret_password)
    u = User.find_by_email(email)
    if u && u.is_password?(secret_password)
      return u
    else
      return nil
    end
  end
end