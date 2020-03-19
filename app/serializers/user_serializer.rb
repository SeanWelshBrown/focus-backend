class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :time_meditated, :time_focused
end
