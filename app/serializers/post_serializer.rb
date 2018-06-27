class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :video, :date, :media


  belongs_to :user
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email, :title, :profession, :workplace, :media, :usertype
  end
end
