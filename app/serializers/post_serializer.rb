class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :video, :date, :media, :relevants, :indifferents, :excitings


  belongs_to :user
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email, :title, :profession, :workplace, :media, :usertype
  end

  has_many :comments
  class CommentSerializer < ActiveModel::Serializer
    attributes :id, :user, :description
  end

  has_many :ratings
  class RatingSerializer < ActiveModel::Serializer
    attributes :id, :ratingtype
  end




  def relevants
    @counter = 0
    @ratings = object.ratings
    @ratings.each do |rating|
      @counter = @counter + 1 if rating.ratingtype.name == "Relevante"
    end
    return @counter
  end

  def indifferents
    @counter = 0
    @ratings = object.ratings
    @ratings.each do |rating|
      @counter = @counter + 1 if rating.ratingtype.name == "Indiferente"
    end
    return @counter
  end

  def excitings
    @counter = 0
    @ratings = object.ratings
    @ratings.each do |rating|
      @counter = @counter + 1 if rating.ratingtype.name == "Emocionante"
    end
    return @counter
  end

end
