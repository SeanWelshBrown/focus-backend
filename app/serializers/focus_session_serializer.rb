class FocusSessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :focus_type, :notes

  has_many :work_chunks
  has_many :break_chunks

  # def work_chunks
  #   self.object.work_chunks
  # end

  # def break_chunks
  #   self.object.break_chunks
  # end

end
