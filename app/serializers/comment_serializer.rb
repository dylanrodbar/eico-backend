class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user, :description
end
