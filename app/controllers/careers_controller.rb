class CareersController < ApplicationController
    def index
        @applications = Application.includes(:application_reports, :job).where(user_id: current_user.id)
    end
end
