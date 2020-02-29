class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        self.actors.map {|actor| actor.full_name}            
    end

end

# Show
#   has data attributes (FAILED - 13)
#   has many characters in an array (FAILED - 14)
#   has an #actors_list method that returns a list of the full names of each actor associated with the show (FAILED - 15)
#   can build its characters through a method (FAILED - 16)
#   should have a genre (FAILED - 17)
#   can build an associated network (FAILED - 18)
