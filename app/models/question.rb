class Question < ActiveRecord::Base
  attr_accessible :multi_options, :subject
  validates_presence_of :subject, :on => :create, :message => "*"
  
  belongs_to :survey
  
  has_many :options,dependent: :destroy
end
