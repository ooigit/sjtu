class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true,
					:length => { :maximum => 50 },
					:format => { :with => email_regex },
					:uniqueness => { :case_sensitive => false }

  validates :password, :presence => true

  has_many :takings
  has_many :divisions, :through => :takings, :source => :division

  def taking? division
    takings.find_by_division_id division
  end

  def apply_for! division
    takings.create!(:division_id => division.id)
  end

  def give_up! division
    takings.find_by_division_id(division).destroy
  end
end
