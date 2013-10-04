class Event < ActiveRecord::Base
  belongs_to :host
  has_many :rsvps

	validates_presence_of :name
  validates_presence_of :location
  validates_presence_of :description
  validates_presence_of :date
	validates_presence_of :host
end
