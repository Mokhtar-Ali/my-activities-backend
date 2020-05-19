class ChatroomSerializer < ActiveModel::Serializer
    attributes :id, :activity_id

    belongs_to :activity
    has_many :messages
  end