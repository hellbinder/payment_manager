require 'spec_helper'

describe "payment_sources/show" do
  before(:each) do
    @payment_source = assign(:payment_source, stub_model(PaymentSource,
      :name => "Name",
      :payment_source_type_id => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
