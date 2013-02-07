class CreateTopicsDocDrops < ActiveRecord::Migration
  def change
    create_table :topics_doc_drops do |t|
      t.integer :document_id
      t.integer :topic_id
      t.decimal :weight

      t.timestamps
    end
  end
end
