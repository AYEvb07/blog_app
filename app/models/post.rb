class Post < ApplicationRecord
    has_many :comments
    
    validates :title, presence: true,  #Ensure all posts will have a title that is at least 5 characters long
                      length: { minimum: 5 }  
end
