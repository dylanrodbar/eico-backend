class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :title, :profession, :workplace, :media, :usertype

  has_many :posts
  class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :video, :date, :media
  end
end