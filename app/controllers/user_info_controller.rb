class UserInfoController < ApplicationController
    def index
        @id = current_user.id
        @profile = current_user.user_info
    end

    def new
        @user_info = UserInfo.new
    end

    def create
        @user_info = UserInfo.new(profile_params.merge(user_id: current_user.id))
        if @user_info.save
            redirect_to users_path
        else
            render :new
        end
    end

    private

    def profile_params
      params.permit(:f_name, :l_name, :avion_batch, :github_id, :linkedin_link)
    end
end
