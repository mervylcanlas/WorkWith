class CreateApplicationReports < ActiveRecord::Migration[6.1]
    def change
        create_table :application_reports do |t|
            t.integer :application_id
            t.string :details
            t.date :progress_date
            t.timestamps
        end
    end
end
