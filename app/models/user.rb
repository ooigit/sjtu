class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true,
					:length => { :maximum => 50 },
					:format => { :with => email_regex },
					:uniqueness => { :case_sensitive => false }

  validates :password, :presence => true,
end
