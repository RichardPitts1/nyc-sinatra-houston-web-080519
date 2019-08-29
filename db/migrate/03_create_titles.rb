class CreateTitles < ActiveRecord::Migration
    # raise 'Write CreateLandmarks migration here'
  
    create_table :titles do |t|
      t.string :name
  end

end