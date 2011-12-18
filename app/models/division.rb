class Division < ActiveRecord::Base
  belongs_to :course
  belongs_to :parent, :class_name => "Division"
  has_many :childrendivisions, :class_name => "Division",
							:foreign_key => :parent_id
  has_many :takings
  has_many :users, :through => :takings, :source => :user

  def guests
    classify if @guests.nil?
	@guests
  end

  def students
    classify if @students.nil?
	@students
  end

  def tas
    classify if @tas.nil?
	@tas
  end

  def teachers
    classify if @teachers.nil?
	@teachers
  end

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

  private

  def classify
    @guests = []
	@students = []
	@teachers = []
	@tas = []
	self.takings.each do |taking|
	  user = taking.user
	  if taking.is_student?
		@students << user
	  elsif taking.is_ta?
		@tas << user
	  elsif taking.is_teacher?
	    @teachers << user
	  else
		@guests << user
	  end
	end
  end

end
