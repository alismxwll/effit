require 'rails_helper'

describe Subeffit do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should have_many :postits }
end