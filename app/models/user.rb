class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    has_many :applications
    has_many :projects
    has_one :user_info

    validates :username, presence: true, uniqueness: true
end
