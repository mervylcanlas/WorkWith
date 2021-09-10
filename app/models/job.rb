class Job < ApplicationRecord
    has_many :applications

    validates :added_by, presence: true
    validates :company, presence: true
    validates :link, presence: true
    validates :contact_email, presence: true
    validates :title, presence: true
end
