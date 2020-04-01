class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :time_meditated, :time_focused


  has_many :meditation_sessions, serializer: MeditationSessionSerializer
  has_many :focus_sessions, serializer: FocusSessionSerializer

end
