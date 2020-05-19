class MessageSerializer < ActiveModel::Serializer
    attributes :id, :content, :chatroom_id, :user_id, :user_name, :created_at, :user_image
  
    belongs_to :chatroom
    belongs_to :user
    has_one :user
  end 