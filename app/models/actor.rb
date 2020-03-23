class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        name = self.first_name + " " + self.last_name
        name
    end

    def list_roles
        roles = []
        x = 0
        while x <= self.characters.length
            if self.characters.find_by_id(x)
                add_this = self.characters.find_by_id(x).name + " - " + self.characters.find_by_id(x).show.name
                roles << add_this
            end
            x += 1
        end
        # self.characters do |character|
        #     add_this = ""
        #     #if character
        #         add_this += character.name
        #         add_this += " - "
        #         add_this += character.show
        #     #end
        #     roles << add_this
        # end
        roles 
    end
            
  
end