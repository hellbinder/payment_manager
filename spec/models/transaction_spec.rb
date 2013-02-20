require 'spec_helper'

describe Transaction do
  it 'should not save when amount = 0' do
    trans = build(:empty_transaction)
    trans.save.should be_false
  end
end
