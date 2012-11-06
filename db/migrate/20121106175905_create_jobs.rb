class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :headline
      t.string :location
      t.string :skill
      t.string :duration
      t.text :description

      t.timestamps
    end
  end
end
