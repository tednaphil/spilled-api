class User < ApplicationRecord
    has_many :user_favs
    has_many :teas, through: :user_favs
end
