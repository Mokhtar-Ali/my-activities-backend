class ParticipantSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :activity_id

    belongs_to :activity
    belongs_to :user
  end

    