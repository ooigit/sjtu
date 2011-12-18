class Course < ActiveRecord::Base
  has_many :divisions

  def root_divisions
    roots = []
    self.divisions.each do |d|
	  if d == d.parent
		roots << d
	  end
	end
	roots
  end
end
