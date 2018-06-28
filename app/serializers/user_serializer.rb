class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :title, :profession, :workplace, :media, :usertype

  has_many :posts
  class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :video, :date, :media
  end

  has_many :educations
  class EducationSerializer < ActiveModel::Serializer
    attributes :id, :titlename, :school, :initialdate, :finaldate, :description
  end

  has_many :projects
  class ProjectSerializer < ActiveModel::Serializer
    attributes :id, :projectname, :workplace, :initialdate, :finaldate, :description
  end
end