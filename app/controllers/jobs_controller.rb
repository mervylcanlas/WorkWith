class JobsController < ApplicationController
    def new
        @job = Job.new
    end

    def create
        @job = Job.new(job_params.merge(added_by: current_user.id))

        if @job.save
            if current_user.account_type != 'admin'
                Application.create(user_id: current_user.id, job_id: @job.id, status: 'ongoing')
                redirect_to '/careers'
            end
        else
            render :new
        end
    end

    private

    def job_params
        params.require(:job).permit(:company, :link, :contact_email, :title)
    end
end
