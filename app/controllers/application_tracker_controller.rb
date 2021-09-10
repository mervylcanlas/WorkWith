class ApplicationTrackerController < ApplicationController
    def index
        @students = User.includes(:user_info).where(account_type: 'student')
        @name_list = []
        @students.each do |s|
            @name_list.push(['Batch '+ s.user_info.avion_batch.to_s + ' - ' + s.user_info.f_name + ' ' + s.user_info.l_name, s.id])
        end
        @search_name = UserInfo.find_by(user_id: select_params[:student])
        @applications = Application.includes(:application_reports, :job).where(user_id: select_params[:student])
        @student_id = select_params[:student]
    end

    private

    def select_params
        params.permit(:student)
    end
end
