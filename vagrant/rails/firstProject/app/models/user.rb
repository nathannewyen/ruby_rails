class User < ActiveRecord::Base
    validates :email, presence: true
    after_update :updated

    def updated
        puts "Updated"
    end
end
