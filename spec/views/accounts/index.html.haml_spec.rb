require 'spec_helper'

describe "accounts/index" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :name => "Name",
        :description => "Description",
        :balance => "9.99",
        :timestamp => "Timestamp"
      ),
      stub_model(Account,
        :name => "Name",
        :description => "Description",
        :balance => "9.99",
        :timestamp => "Timestamp"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Timestamp".to_s, :count => 2
  end
end
