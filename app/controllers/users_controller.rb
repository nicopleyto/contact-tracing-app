class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :destroy]
    before_action :authenticate_admin

    def index
        @users = User.all
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to root_path, notice: "User was successfully updated."
        else
            render :edit
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to root_path, notice: "User was successfully created."
        else
            render :new
        end
    end

    def destroy
        @user.destroy
        redirect_to root_path, notice: "User successfully deleted"
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :store_name)
    end

    def authenticate_admin
        if user_signed_in? && current_user.admin?
          return
        else
          redirect_to root_path, notice: "You must be an admin to perform this action."
        end
    end
end
