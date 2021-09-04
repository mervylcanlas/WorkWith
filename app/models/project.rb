class Project < ApplicationRecord
    belongs_to :user
    has_many :project_features

    validates :title, presence: true
    validates :tech, presence: true
    validates :github_link, presence: true
    validates :deploy_link, presence: true
    validates :image_link, presence: true
    validates :overview, presence: true
end
