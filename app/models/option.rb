class Option < ActiveRecord::Base
  attr_accessible :topic
  validates_presence_of :topic, :on => :create, :message => "*"
  belongs_to :question
end
