class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :job_id
      t.integer :pitch_id
      t.string :upload_url

      t.timestamps
    end
  end
end
