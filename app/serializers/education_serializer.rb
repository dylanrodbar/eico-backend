class EducationSerializer < ActiveModel::Serializer
  attributes :id, :titlename, :school, :initialdate, :finaldate, :description

  belongs_to :user
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email, :title, :profession, :workplace, :media, :usertype
  end

end
