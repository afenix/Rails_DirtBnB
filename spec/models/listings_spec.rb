require 'rails_helper'

describe Listing do
  it { should validate_presence_of :content }
  it { should belong_to :user }

end
