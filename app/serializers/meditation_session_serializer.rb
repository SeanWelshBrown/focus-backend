class MeditationSessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :length, :mood, :notes
end
