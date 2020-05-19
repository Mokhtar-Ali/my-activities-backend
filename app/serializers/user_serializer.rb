class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :city, :image
    has_many :activities
    has_many :messages
    has_many :reviews
    has_many :participants
  end