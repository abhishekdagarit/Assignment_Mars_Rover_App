class Grid < ActiveRecord::Base
  attr_accessible :breadth, :length

  validates_presence_of :length, :breadth, :on => :create

  validates :length, :breadth, :numericality => { :only_integer => true, :greater_than => 2, :less_than => 100}
  validate :is_it_square

  def is_it_square
    if (length == breadth)
       errors.add(:length, "Latest research and our experience shows that a rectangular region is more effective for this kind of mission.")
    end  
  end

end
