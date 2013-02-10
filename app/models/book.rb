class Book < ActiveRecord::Base
  attr_accessible :title, :price, :subject_id, :description
  belongs_to :subject
  validates_presence_of :title
  validates_numericality_of :price, :message=>"Error Message"
end
