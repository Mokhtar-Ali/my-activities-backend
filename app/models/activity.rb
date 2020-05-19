class Activity < ApplicationRecord
    has_many :reviews
    has_many :participants
    has_many :users, through: :participants
    belongs_to :category
    belongs_to :user
    has_one :chatroom 

 
      

    # def self.total_rating
    #     rating = 0
    #     activity = Activity.find(params[:id])
    #     if (activity.reviews.length > 0) {
    #         activity.reviews.each { |review| rating += reviews.rating}
    #     }
    #     return rating / activity.reviews.length
    # end 
end
 