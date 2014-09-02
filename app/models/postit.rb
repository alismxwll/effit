class Postit < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true
    default_scope { where(published: true) }
  belongs_to :effer
  belongs_to :subeffit
end

