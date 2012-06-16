class Survey < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :questions,dependent: :destroy
  has_many :papers,dependent: :destroy
end
