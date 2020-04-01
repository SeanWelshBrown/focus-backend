class FocusSessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :duration, :work_chunks, :break_chunks, :focus_type, :note

end
