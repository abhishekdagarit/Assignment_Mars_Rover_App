class Grid < ActiveRecord::Base
   	has_many :shuttles
	validates :x_axis, :y_axis, :presence => true, :inclusion => { :in => 1..21, :message => ": Please enter values between 1 and 21 only."}, :numericality => {:only_integer => :true, :message => ": Please enter a integer value only"}
	validates :description, :length => {:minimum => 4, :maximum => 30 }
end
