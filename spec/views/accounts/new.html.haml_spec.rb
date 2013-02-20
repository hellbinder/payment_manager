require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :name => "MyString",
      :description => "MyString",
      :balance => "9.99",
      :timestamp => "MyString"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_name", :name => "account[name]"
      assert_select "input#account_description", :name => "account[description]"
      assert_select "input#account_balance", :name => "account[balance]"
      assert_select "input#account_timestamp", :name => "account[timestamp]"
    end
  end
end
