class AccountsController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]

    def index
        @users = User.all
    end

    def edit
        # @user = User.find(params[:id])
    end

    def update
        if @user_account.update(account_params)
            redirect_to accounts_path
        end
    end

    private

    def set_user
        @user_account = User.find(params[:id])
    end

    def account_params
        params.require(:user).permit(:email, :account_type)
    end
end