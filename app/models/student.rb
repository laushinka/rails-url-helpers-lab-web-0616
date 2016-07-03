class Student < ActiveRecord::Base
  # def initialize
#   self.status ||= active
# end

  def to_s
    self.first_name + " " + self.last_name
  end
end
