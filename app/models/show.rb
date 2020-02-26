class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters

    def actors_list
        list_of_actors = []
        list_of_actors << "#{Actor.all[Actor.all.length - 1].first_name} #{Actor.all[Actor.all.length - 1].last_name}" if Actor.all[Actor.all.length - 1].id == Character.all[Character.all.length - 1].actor_id && Character.all[Character.all.length - 1].show_id == self.id
        list_of_actors
    end
  
end