require 'spec_helper'

describe "payment_source_types/show" do
  before(:each) do
    @payment_source_type = assign(:payment_source_type, stub_model(PaymentSourceType,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
