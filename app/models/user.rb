class User < ApplicationRecord
  has_secure_password #método para validar que la contraseña que se brinde sea segura
  belongs_to :usertype, foreign_key: :usertype_id
  has_many :educations
  has_many :projects
  has_many :posts
  has_many :comments
  has_many :ratings

end
