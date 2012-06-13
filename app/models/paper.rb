class Paper < ActiveRecord::Base
  belongs_to :survey
  attr_accessible :collection_from
  has_many :answers
end
