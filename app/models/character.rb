class Character < ActiveRecord::Base
    belongs_to :actor 
    belongs_to :show

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    def build_show(arg)
        @@new_show = Show.new(arg)
        @@new_show.characters << self
    end

    def self.build_network(arg)
        Show.build_network(arg, @@new_show)
    end

#     rick = Character.new(:name => "Rick Grimes")
#   rick.build_show(:name => "The Walking Dead").build_network(:call_letters => "AMC")
end