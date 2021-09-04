class UserInfo < ApplicationRecord
    belongs_to :user
    validates :f_name, presence: true
    validates :l_name, presence: true
    validates :avion_batch, presence: true
    validates :github_id, presence: true
    validates :linkedin_link, presence: true
end
