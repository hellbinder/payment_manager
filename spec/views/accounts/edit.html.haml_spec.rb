require 'spec_helper'

describe "accounts/edit" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :name => "MyString",
      :description => "MyString",
      :balance => "9.99",
      :timestamp => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_name", :name => "account[name]"
      assert_select "input#account_description", :name => "account[description]"
      assert_select "input#account_balance", :name => "account[balance]"
      assert_select "input#account_timestamp", :name => "account[timestamp]"
    end
  end
end
