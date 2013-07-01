class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :content, :title, { message: "Can't have an empty field" }
end


