class Host < ActiveRecord::Base
	has_secure_password

	has_many :events

	validates_presence_of :username
	validates_presence_of :name
	validates_uniqueness_of :username
end
