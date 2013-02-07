class Document < ActiveRecord::Base
  has_many :topics_doc_drops
  has_many :topics, :through => :topics_doc_drops,
           :source => :topic
  attr_accessible :index, :file_path, :auth
  self.primary_key = "index"

  def getWeightstopic(doc_id)
     wt_hash = Hash.new()
     Document.find(doc_id).topics.each do |topic|
        weight = TopicsDocDrop.where("document_id=#{doc_id} AND topic_id=#{topic.id}").first.weight
        topic_id = topic.id
        wt_hash[topic_id] = weight 
     end
     puts wt_hash.size()
     return wt_hash
  end

end
