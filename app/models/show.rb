class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.collect do |c|
      "#{c.full_name}"
    end  
  end

  def build_network(netwrk)
    self.network = Network.find_or_create_by(netwrk)
  end
end