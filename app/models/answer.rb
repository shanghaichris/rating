class Answer < ActiveRecord::Base
  belongs_to :paper
  belongs_to :option
  # attr_accessible :title, :body
end
