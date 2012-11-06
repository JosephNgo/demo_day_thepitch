class Job < ActiveRecord::Base
  attr_accessible :description, :duration, :headline, :location, :skill, :employer_id

  belongs_to :employer
end
