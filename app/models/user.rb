class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save { |user| user.email.downcase! }
  #after_validation { self.errors.messages.delete(:password_digest) }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /^[\w.+\-]+\@[a-z\d.\-]+\.\w+$/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end
