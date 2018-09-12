class Photo < ActiveRecord::Base
  has_many :comments
  validates :title, :presence => true
end
