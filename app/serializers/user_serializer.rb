class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :image
  # has_many :addresses
end
