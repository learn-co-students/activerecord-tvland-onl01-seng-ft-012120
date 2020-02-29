class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        characters.collect do |character|
            "#{character.name} - #{character.show.name}"
        end
    end

end

# Actor
#   has a first and last name (FAILED - 1)
#   has associated characters in an array (FAILED - 2)
#   can build its associated characters (FAILED - 3)
#   can build its associated shows through its characters (FAILED - 4)
#   can list its full name (FAILED - 5)
#   can list all of its shows and characters (FAILED - 6)