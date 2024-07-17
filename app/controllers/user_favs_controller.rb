class UserFavsController < ApplicationController
    def index
        @user_favs = UserFav.all
        render json: @user_favs
        # render json: 'user_favs'
    end

    # def show
    #     @users_favs = UserFav.find(params[:id])
    #     render json: @users_favs
    # end

    def show
        @users_favs = User.find(params[:id]).user_favs
        render json: @users_favs
    end

    def create
        @fav = User_Fav.new(fav_params)

        if @fav.save
            render json: @fav, status: :created, location: @fav
        else
            render json: @fav.errors, status: :unprocessable_entity
        end
    end

    def fav_params
        params.require(:fav).permit(:user_id, :tea_id)
    end

end
