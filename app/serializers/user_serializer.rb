class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :time_meditated, :time_focused

  # def meditation_sessions
  #   @meditation_sessions = self.object.meditation_sessions
  # end

  has_many :meditation_sessions, serializer: MeditationSessionSerializer

end
