class Pitch < ActiveRecord::Base
  attr_accessible :headline, :job_id, :user_id
  
  belongs_to :user
  belongs_to :job
  has_many :attachments
  
end
