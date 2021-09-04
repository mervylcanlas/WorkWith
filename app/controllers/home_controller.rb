class HomeController < ApplicationController
    before_action :user_or_admin
    def index
        
    end

    def user_or_admin
        if current_user.present? && current_user.account_type == "admin"
            redirect_to admin_path            
        elsif current_user.present? && current_user.account_type != "admin"
            redirect_to users_path
        end
    end
end
