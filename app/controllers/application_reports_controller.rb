class ApplicationReportsController < ApplicationController
    def create
        @application = Application.find(params[:application_id])
        @application_report = @application.application_reports.create(report_params)
        redirect_to application_path(@application)
    end
      
    private

    def report_params
        params.require(:application_report).permit(:details, :progress_date)
    end
end
