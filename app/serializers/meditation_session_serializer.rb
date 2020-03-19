class MeditationSessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :duration, :note, :user_id

end
