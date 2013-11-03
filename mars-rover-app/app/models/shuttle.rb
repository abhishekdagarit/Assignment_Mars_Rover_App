#Shuttle can only move 5 blocks
#class FiveBlocksOnlyValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     if (target_x_axis - landing_x_axis) OR (target_y_axis - landing_y_axis) > 5
#	record.errors[attribute] = ": Rovers can only travel for 5 blocks."
#     end
#   end
#end

#Shuttle can't move diagonally
#class DiagonalValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     if (target_x_axis - landing_x_axis) OR (target_y_axis - landing_y_axis) == 0
#      if (target_x_axis - landing_x_axis) OR (target_y_axis - landing_y_axis) == 1
#	record.errors[attribute] = ": Rovers can't move diagonally."
#      end
#     end
#   end
#end

#Has to land in the grid
#class LandInsideGridValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     if (landing_x_axis > x_axis) OR (landing_y_axis > y_axis)
#	record.errors[attribute] = ": Rovers can't move diagonally."
#     end
#   end
#end


class Shuttle < ActiveRecord::Base
   belongs_to :grid
   validates :landing_x_axis, :landing_y_axis, :target_x_axis, :target_y_axis, :presence => true, :numericality => {:only_integer => true}
#   validates :target_x_axis, :target_y_axis, :five_blocks_only => true, :diagonal => true
#   validates :landing_x_axis, :landing_y_axis, :land_inside_grid => true
end
