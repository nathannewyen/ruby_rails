class User < ActiveRecord::Base
  has_secure_password

  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets, through: :likes, source: :secret

  EMAIL_REGEX = /\A([^@\s]+)@((?:[a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_Sensitive:false }, format: { with: EMAIL_REGEX}
  validates :password, presence: true, length: { minimum: 5 }

  before_save :email_lowercase

  # makes email lowercase before user submits

  def email_lowercase
    email.downcase!
  end

end
