class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actors = []
        x = 0
        while x <= self.characters.length
            if self.characters.find_by_id(x)
                add_this = self.characters.find_by_id(x).actor.first_name + " " + self.characters.find_by_id(x).actor.last_name
                actors << add_this
            end
            x += 1
        end
        actors
    end

end