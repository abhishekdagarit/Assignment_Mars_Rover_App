class Rover < ActiveRecord::Base
  attr_accessible :landing_x_axis, :landing_y_axis, :target_x_axis, :target_y_axis

end
