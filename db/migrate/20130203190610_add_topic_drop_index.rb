class AddTopicDropIndex < ActiveRecord::Migration
  def up
     add_index :topics_doc_drops, :document_id, :name=>'document_id_ix'
     add_index :topics_doc_drops, :topic_id, :name=> 'topic_id_ix' 
  end

  def down
     remove_index :topics_doc_drops, 'document_id_ix' 
     remove_index :topics_doc_drops, 'topic_id_ix' 
  end
end
