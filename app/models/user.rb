class User < ActiveRecord::Base
  has_many :posts
  validates_presence_of :name, :email, :password, { message: "Can't have an empty field" }
  validates :email, :format => {with: /.+@.+\..{2,}/, message: "Invalid email address"}
  validates_uniqueness_of :email, {message: "Email address already exists"}
end
