class ActivitySerializer < ActiveModel::Serializer
    attributes :id, :name, :image, :address, :about, :date, :user_id, :category_id, :lat, :lng

    has_many :reviews
    has_many :participants
    has_many :users, through: :participants
    belongs_to :category
    belongs_to :user
    has_one :chatroom 
  end

   
    