require 'rails_helper'

describe Postit do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should belong_to :effers }
  it { should belong_to :subeffits }
end