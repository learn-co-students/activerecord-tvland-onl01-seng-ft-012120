class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  # rick.build_show(:name => "The Walking Dead").build_network(:call_letters => "AMC")
  # def build_show

  # end
end