class Blog < ActiveRecord::Base
    # Relationships
    has_many :owners
    has_many :posts
    has_many :messages, through: :posts
    has_many :users, through: :owners
    has_many :users_posts, through: :posts, source: :user

    # Validations
    validates :name, :description, presence: true
end
