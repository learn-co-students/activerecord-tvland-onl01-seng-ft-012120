class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows , through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    self.characters.each do |character|
      show_id = character.show_id
      show = self.shows.collect{|show|show.name if show.id == 1}[0]
      roles << "#{character.name} - #{show}"
    end
    roles
  end
end