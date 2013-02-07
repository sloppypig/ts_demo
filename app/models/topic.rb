class Topic < ActiveRecord::Base
   has_many :topics_doc_drops
   has_many :documents, :through => :topics_doc_drops,
            :source => :document
##            :class_name => "Document",
##           :source => :documents
#            :conditions => ['topics_doc_drops.active = ?', true] 
   attr_accessible :index 
   (1..19).each do |i|
    tag = "word_#{i}"
    attr_accessible tag
   end
   self.primary_key = "index" 



   def getKeywords
      keywords_array = Array.new()
      (1..19).each do |i|
         tag = "word_#{i}"
         keywords_array  << self.read_attribute(tag)
      end
      return keywords_array
   end
end
