class Rating < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :post, foreign_key: :post_id
  belongs_to :ratingtype, foreign_key: :ratingtype_id


end
