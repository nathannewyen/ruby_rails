class Song < ActiveRecord::Base
    has_many :lists

	validates :artist,:title, presence: true, length: { minimum: 2 }
end
