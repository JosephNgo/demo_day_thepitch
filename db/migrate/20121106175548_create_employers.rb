class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :website
      t.string :city

      t.timestamps
    end
  end
end
