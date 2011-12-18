class Division < ActiveRecord::Base
  belongs_to :course
  belongs_to :parent, :class_name => "Division"
  has_many :childrendivisions, :class_name => "Division",
							:foreign_key => :parent_id

  def subs
    self.childrendivisions - [self]
  end

  def leaf?
    self.subs.empty?
  end

  def root
    division = self
	while (!division.root?)
	  division = division.parent
	end
	division
  end

  def root?
    self == self.parent
  end

  def level
    level = 0
    division = self
	while (!division.root?)
	  division = division.parent
	  level += 1
	end
	level
  end
end
