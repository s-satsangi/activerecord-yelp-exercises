class Dish < ActiveRecord::Base
    
    belongs_to :restaurant
    has_many :dish_tags
    has_many :tags, through: :dish_tags
    validates :name, presence: true
    validates :restaurant, presence: true
    
  
    def tags
       #DishTag.pluck()
        dish_tags.pluck(tag_ids)


    end



end