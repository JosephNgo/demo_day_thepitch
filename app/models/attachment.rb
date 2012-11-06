class Attachment < ActiveRecord::Base
  attr_accessible :job_id, :pitch_id, :upload_url
  
  belongs_to :pitch
end
