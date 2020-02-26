class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters


    def full_name
        full_name = "#{self.first_name} #{self.last_name}"
        full_name
    end

    def list_roles
        self.characters.map {|x| "#{x.name} - #{x.show.name}"}
    end


end