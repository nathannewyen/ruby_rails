class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  # Validation
  validates :author, :message, presence: true, length: { minimum: 3 }
end
