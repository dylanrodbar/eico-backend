class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :title, :profession, :workplace, :media, :usertype
end
