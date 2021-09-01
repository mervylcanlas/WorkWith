class CreateProjects < ActiveRecord::Migration[6.1]
    def change
        create_table :projects do |t|
            t.string :title
            t.string :tech
            t.integer :user_id
            t.string :github_link
            t.string :deploy_link
            t.string :image_link
            t.string :overview
            t.timestamps
        end
    end
end
