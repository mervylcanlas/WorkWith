class Application < ApplicationRecord
    belongs_to :user
    has_many :application_reports
end
