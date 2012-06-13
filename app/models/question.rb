class Question < ActiveRecord::Base
  attr_accessible :multi_options, :subject
  belongs_to :survey
  
  has_many :options
end
