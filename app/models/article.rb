class Article < ActiveRecord::Base
  attr_accessible :title, :body
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

def tag_list
  tags.join(", ")
end

end
