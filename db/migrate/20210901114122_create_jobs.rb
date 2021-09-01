class CreateJobs < ActiveRecord::Migration[6.1]
    def change
        create_table :jobs do |t|
            t.string :added_by
            t.string :company
            t.string :link
            t.string :contact_email
            t.string :title
            t.timestamps
        end
    end
end
