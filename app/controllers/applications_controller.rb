class ApplicationsController < ApplicationController
    def show
        @application = Application.includes(:job).find(params[:id])
    end
    def new
        @application = Application.new

        @students = User.includes(:user_info).where(account_type: 'student')
        @name_list = []
        @students.each do |s|
            @name_list.push(['Batch '+ s.user_info.avion_batch.to_s + ' - ' + s.user_info.f_name + ' ' + s.user_info.l_name, s.id])
        end

        @jobs = Job.all
        @job_list = []
        @jobs.each do |j|
            @job_list.push([j.company + ' - ' + j.title, j.id])
        end

    end
    def create
        @application = Application.new(application_params.merge(status: 'ongoing'))
        if @application.save
            redirect_to application_path(@application)
        else
            redirect_to :new
        end
    end

    private

    def application_params
        params.permit(:job_id, :user_id)
    end
end
