class ProjectFeaturesController < ApplicationController
    def create
        @project = Project.find(params[:project_id])
        @project_feature = @project.project_features.create(feature_params)
        redirect_to project_path(@project)
      end
      private
      def feature_params
        params.require(:project_feature).permit(:description)
      end
end
