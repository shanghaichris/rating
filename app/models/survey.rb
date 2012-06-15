class Survey < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :questions,dependent: :destroy
end
