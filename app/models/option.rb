class Option < ActiveRecord::Base
  attr_accessible :topic
  belongs_to :question
end
