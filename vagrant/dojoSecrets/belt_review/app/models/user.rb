class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[a-z0-9]+\.)+[a-z]+)\z/i
  validates :fname, :lname, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: {case_Sensitive:false }, format: { with: EMAIL_REGEX}
  validates :city, presence: true
  validates :password, presence: true, length: { minimum: 5 }

  before_save :email_lowercase

  def email_lowercase
    email.downcase!
  end
end
