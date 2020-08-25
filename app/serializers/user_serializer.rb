class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :notes
  has_many :tags
end
