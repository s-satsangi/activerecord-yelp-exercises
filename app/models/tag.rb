class Tag < ActiveRecord::Base

    has_many :dish_tags
    has_many :dishes, through: :dish_tags
    validates :name, length: {minimum: 2} 

    

    def self.all_dishes
        # Dishtag.find_each do |dishtags|

        DishTag.where("self.tag_id = tag_id", dish_tags[:dishes])

    end 


    # def initialize(*args)
    #     super(*args)
    #     #check for bad tag! && check for only one or two words
    #     #args.split.length
    #     arg_array=args.split
    #     if  (arg_array.length > 2) #if tag is more than two words fail
    #         puts 'Tags can be no longer than two word. Sorry!'
    #     elsif(arg_array[0].length < 3) || (arg_array[1].length < 3) #if either word < 3 chars, fail?
    #         puts 'Tags need to be 3 characters or more'
    #     elsif
    #         @name = args #???
    #     end
    # end

##### STUFF ON VALIDATIONS
    # class Person < ApplicationRecord
    #     validates :name, presence: true
    #   end
       
    #   Person.create(name: "John Doe").valid? # => true
    #   Person.create(name: nil).valid? # => false
      
# class Order < ActiveRecord::Base
#   validates :card_number, presence: true, if: :paid_with_card?
 
#   def paid_with_card?
#     payment_type == "card"
#   end
# end

end