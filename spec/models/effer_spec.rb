require 'rails_helper'

describe Effer do
  it { should validate_presence_of :account_name }
  it { should validate_presence_of :password }
  it { should have_many :postits }
end