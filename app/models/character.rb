class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
end


# Character
#   has a first and last name (FAILED - 7)
#   belongs to an actor (FAILED - 8)
#   belongs to a show (FAILED - 9)
#   has a catchphrase (FAILED - 10)
#   can build its associated show (FAILED - 11)
#   can chain-build associations to which it belongs (FAILED - 12)