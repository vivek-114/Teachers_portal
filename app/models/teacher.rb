class Teacher < ApplicationRecord
    has_secure_password

    has_many :students, dependent: :destroy

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
end