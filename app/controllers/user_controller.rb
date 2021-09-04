class UserController < ApplicationController
    def index
        if !current_user.user_info
            redirect_to new_user_info_path
        end
    end

    def edit
        @profile = UserInfo.where(user_id: (params[:id]))
    end

end
