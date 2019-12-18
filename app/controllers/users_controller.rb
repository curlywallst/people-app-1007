class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
        @user.children.build
        @user.children.build
        @user.children.build
        @user.children.build
        @user.children.build
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to users_path
        else
            flash.now[:error] = @user.errors.full_messages
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(
            :username, 
            :email,
            children_attributes: [
                :name,
                :nickname
            ]
            )
    end
end
