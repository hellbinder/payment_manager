require 'spec_helper'

describe "payment_sources/new" do
  before(:each) do
    assign(:payment_source, stub_model(PaymentSource,
      :name => "MyString",
      :payment_source_type_id => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new payment_source form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_sources_path, :method => "post" do
      assert_select "input#payment_source_name", :name => "payment_source[name]"
      assert_select "input#payment_source_payment_source_type_id", :name => "payment_source[payment_source_type_id]"
      assert_select "textarea#payment_source_description", :name => "payment_source[description]"
    end
  end
end
