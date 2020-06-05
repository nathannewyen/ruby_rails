class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, dependent: :destroy
  validates :title, :content, presence: true, length: { minimum: 7}

  after_update :updated

  def updated
    puts "Updated"
  end
end
