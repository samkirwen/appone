class Message < ActiveRecord::Base
  attr_accessible :downvote, :input, :response, :upvote
end
