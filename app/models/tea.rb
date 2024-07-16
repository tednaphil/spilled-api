class Tea < ApplicationRecord
    has_many :user_favs
    has_many :users, through :user_favs
end
