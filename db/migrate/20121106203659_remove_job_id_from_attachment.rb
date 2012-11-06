class RemoveJobIdFromAttachment < ActiveRecord::Migration
  def up
    remove_column :attachments, :job_id
  end

  def down
    add_column :attachments, :job_id, :integer
  end
end
