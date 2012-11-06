class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.integer :user_id
      t.integer :job_id
      t.string :headlineUs

      t.timestamps
    end
  end
end
