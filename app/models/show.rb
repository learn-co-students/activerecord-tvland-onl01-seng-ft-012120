class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
#Define a method in the Show class called #actors_list that returns an Array of the full names of each actor associated with the a show.
#Update the associations so that a show belongs to a network

def actors_list
    self.actors.map{|actor| actor.full_name}
end

end