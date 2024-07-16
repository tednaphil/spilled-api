class UserFavsController < ApplicationController
    def index
        @user_favs = User_Fav.all
        render json: @user_favs
    end

    def show
        @users_favs = User_Fav.find(params[:id])
        render json: @users_favs
    end

end
