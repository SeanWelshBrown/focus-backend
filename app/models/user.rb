class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, presence: true

  has_many :meditation_sessions

  has_many :focus_sessions

end
