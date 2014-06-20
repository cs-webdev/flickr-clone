class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :description
      t.string :author
      
      t.timestamp
    end
  end
end
