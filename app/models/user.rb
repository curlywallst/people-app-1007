class User < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }
end
