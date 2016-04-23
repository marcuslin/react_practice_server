class Comment < ActiveRecord::Base
  validates_presence_of :author, :content
end
