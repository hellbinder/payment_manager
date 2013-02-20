require 'spec_helper'

describe PaymentSource do
  before do
    @ps = create(:payment_source)
    @trans = build(:filled_transaction)
  end

  it 'should add transaction to payment when it saves'do
    expect{@ps.transactions << @trans}.to change{@ps.transactions.count}.by(1)
  end

  it 'should have transaction in payment when it saves'do
    @ps.transactions << @trans
    @ps.transactions.should include(@trans)
  end
end
