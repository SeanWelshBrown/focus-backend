class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, presence: true

  has_many :meditation_sessions
    # has_many :moods, through: :meditation_sessions

  has_many :focus_sessions
    # has_many :focus_types, through: :focus_sessions
    has_many :work_chunks, through: :focus_sessions
    has_many :break_chunks, through: :focus_sessions

end
