require 'spec_helper'

describe "payment_source_types/new" do
  before(:each) do
    assign(:payment_source_type, stub_model(PaymentSourceType,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new payment_source_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_source_types_path, :method => "post" do
      assert_select "input#payment_source_type_name", :name => "payment_source_type[name]"
      assert_select "textarea#payment_source_type_description", :name => "payment_source_type[description]"
    end
  end
end
