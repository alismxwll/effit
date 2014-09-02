class Effer < ActiveRecord::Base
  validates :account_name, presence: true
  validates :password, presence: true
  has_many :postits
end