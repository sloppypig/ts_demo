class Word < ActiveRecord::Base
  attr_accessible :word, :topic_id, :count
end
