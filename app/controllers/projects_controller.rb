class ProjectsController < ApplicationController
    def index
        @list = Project.where(user_id: current_user.id).order(created_at: :asc)
    end
    
    def show
        @project = Project.find(params[:id])
    end

    def new
        @project = Project.new
    end

    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])

        if @project.update(edit_project_params)
            redirect_to projects_path
          else
            render :edit
          end
    end

    def create
        @project = Project.new(project_params.merge(user_id: current_user.id))
        if @project.save
            redirect_to projects_path
        else
            render :new
        end
    end

    private

    def project_params
      params.require(:project).permit(:title, :tech, :github_link, :deploy_link, :image_link, :overview)
    end

    def edit_project_params
        params.permit(:title, :tech, :github_link, :deploy_link, :image_link, :overview)
      end

end
