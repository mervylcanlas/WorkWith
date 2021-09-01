class CreateUserInfos < ActiveRecord::Migration[6.1]
    def change
        create_table :user_infos do |t|
            t.string :f_name
            t.string :l_name
            t.integer :avion_batch
            t.string :avion_status
            t.string :github_id
            t.string :linkedin_link
            t.integer :work_years
            t.integer :user_id
            t.timestamps
        end
    end
end
