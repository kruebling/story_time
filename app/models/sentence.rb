class Sentence < ActiveRecord::Base
  belongs_to :user
  belongs_to :story

  validates :sentence, :presence => true
end
