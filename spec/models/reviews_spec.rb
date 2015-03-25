require 'rails_helper'

describe Review do
  it { should validate_presence_of :content }
  it { should validate_presence_of :rating }
  it { should belong_to :user }
  it { should belong_to :listing }

end
