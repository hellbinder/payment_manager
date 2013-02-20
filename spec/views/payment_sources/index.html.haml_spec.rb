require 'spec_helper'

describe "payment_sources/index" do
  before(:each) do
    assign(:payment_sources, [
      stub_model(PaymentSource,
        :name => "Name",
        :payment_source_type_id => 1,
        :description => "MyText"
      ),
      stub_model(PaymentSource,
        :name => "Name",
        :payment_source_type_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of payment_sources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
