class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    char = self.characters
    char.map {|x| x.actor.full_name}
    end
end