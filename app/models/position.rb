class Position < ActiveRecord::Base
   belongs_to :team
   has_many :player_positions
   has_many :players, :through => :player_positions

end
