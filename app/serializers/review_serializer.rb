class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :review, :rating, :user_id, :activity_id
    belongs_to :activity 
    belongs_to :user
  end