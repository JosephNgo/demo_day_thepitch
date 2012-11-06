class Employer < ActiveRecord::Base
  attr_accessible :city, :email, :name, :phone, :website

  has_many :jobs
end
