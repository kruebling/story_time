class User < ActiveRecord::Base
  has_many :stories
  has_many :sentences

  validates :name, :presence => true
end
