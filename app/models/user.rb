class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :password_confirmation
	has_many :sandwiches
	has_secure_password
	validates_presence_of :password, :on => :create
	validates_presence_of :name, :email
end
