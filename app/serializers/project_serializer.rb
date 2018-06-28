class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :projectname, :workplace, :initialdate, :finaldate, :description

  belongs_to :user
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email, :title, :profession, :workplace, :media, :usertype
  end

end
