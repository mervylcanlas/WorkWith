class PortfolioController < ApplicationController
    def index
        @portfolio = []
        @user = User.find_by(username: params[:username])
        @projects = Project.includes(:project_features).where(user_id: @user.id)
    end
end
