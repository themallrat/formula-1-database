class Driver < ActiveRecord::Base
  attr_accessible :name, :team
  validates :name, presence: true
end
