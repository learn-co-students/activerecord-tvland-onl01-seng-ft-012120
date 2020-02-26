class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
      characters = self.characters.collect{|c| c.name}
      shows = self.shows.collect{|s| s.name}
      roles = characters.zip(shows).join(" - ")
      roles
    end  
end