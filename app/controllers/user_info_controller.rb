class UserInfoController < ApplicationController
    def index
        @id = current_user.id
        @profile = current_user.user_info
    end

    def new
        @user_info = UserInfo.new
    end

    def edit
        @profile =  UserInfo.find_by(user_id: params[:id])

        @image_list = get_images

    end

    def create
        @user_info = UserInfo.new(profile_params.merge(user_id: current_user.id))
        if @user_info.save
            redirect_to users_path
        else
            render :new
        end
    end

    def update
        @user_info = UserInfo.find_by(user_id: params[:id])
    
        if @user_info.update(profile_params)
          redirect_to users_path
        else
          render :edit
        end
    end

    private

    def profile_params
      params.permit(:f_name, :l_name, :avion_batch, :github_id, :linkedin_link, :portfolio_img, :intro)
    end

    def get_images
        search_results = Unsplash::Photo.search(query = 'minimal', orientation = 'landscape')
        image_links = []

        search_results.each do |s|
            image_links.push(s.urls.full)
        end
        
        return image_links
    end
end
