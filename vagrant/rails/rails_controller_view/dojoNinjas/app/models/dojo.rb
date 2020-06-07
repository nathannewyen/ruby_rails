class Dojo < ActiveRecord::Base
    validates :name, :city, :state, presence: true
    validates :state, length: { in: 2..2}
    has_one :ninja
end
