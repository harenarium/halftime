class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :lat, :lng
  has_many :users
end
