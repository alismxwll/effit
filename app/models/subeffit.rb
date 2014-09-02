class Subeffit < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  default_scope { where(published: true)
  has_many :postits
end