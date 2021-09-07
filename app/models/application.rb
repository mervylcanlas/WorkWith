class Application < ApplicationRecord
    belongs_to :user
    belongs_to :job
    has_many :application_reports
end
