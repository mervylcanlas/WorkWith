class CreateProjectFeatures < ActiveRecord::Migration[6.1]
    def change
        create_table :project_features do |t|
            t.integer :project_id
            t.string :description
            t.timestamps
        end
    end
end
