class PlayerPosition < ActiveRecord::Base
   belongs_to :players
   belongs_to :positions

end
