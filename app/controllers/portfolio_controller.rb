class PortfolioController < ApplicationController
    def index
        @portfolio = []
        @user = User.find_by(username: params[:username])
        @profile = UserInfo.find_by(user_id: @user.id)
        @projects = Project.includes(:project_features).where(user_id: @user.id)
    end
end
