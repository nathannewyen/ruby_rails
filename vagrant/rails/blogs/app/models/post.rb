class Post < ActiveRecord::Base
  belongs_to :blog
<<<<<<< HEAD
  validates :title, :content, presence: true, length: { minimum: 7}
=======
  has_many :messages, dependent: :destroy
  validates :title, :content, presence: true, length: { minimum: 7}

  after_update :updated

  def updated
    puts "Updated"
  end
>>>>>>> d26caa0fe65917584798b30cfad8c4d3fcc3e8ea
end
