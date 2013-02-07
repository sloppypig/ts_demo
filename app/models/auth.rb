class Auth < ActiveRecord::Base
  attr_accessible :auth, :topic_id, :weight
end
