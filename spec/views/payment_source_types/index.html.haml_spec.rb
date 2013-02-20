require 'spec_helper'

describe "payment_source_types/index" do
  before(:each) do
    assign(:payment_source_types, [
      stub_model(PaymentSourceType,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(PaymentSourceType,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of payment_source_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
