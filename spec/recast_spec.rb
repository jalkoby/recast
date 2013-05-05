require 'spec_helper'

describe Recast do
  it 'auto include to activerecord' do
    ActiveRecord::Base.included_modules.should include(Recast::Model)
  end
end
