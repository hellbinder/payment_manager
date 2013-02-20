require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :name => "Name",
      :description => "Description",
      :balance => "9.99",
      :timestamp => "Timestamp"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/9.99/)
    rendered.should match(/Timestamp/)
  end
end
