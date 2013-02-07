class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :index
      (1..19).each do |i|
        tag = "word_#{i}"
        t.string tag
      end
      t.timestamps
    end
  end
end
