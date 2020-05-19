class CategorySerializer < ActiveModel::Serializer
    attributes :id, :category_type, :image
    has_many :activities
  end 