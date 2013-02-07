class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :word
      t.integer :topic_id
      t.integer :count
      t.timestamps
    end
  end
end
