class Effer < ActiveRecord::Base
  validates :account_name, presence: true
  validates :password, presence: true
end