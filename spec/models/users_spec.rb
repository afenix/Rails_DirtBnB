require 'rails_helper'

describe User do
  it { should have_many :listings }
  it { should have_many :reviews }

end
