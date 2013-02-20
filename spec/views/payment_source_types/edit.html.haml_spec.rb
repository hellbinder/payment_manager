require 'spec_helper'

describe "payment_source_types/edit" do
  before(:each) do
    @payment_source_type = assign(:payment_source_type, stub_model(PaymentSourceType,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit payment_source_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_source_types_path(@payment_source_type), :method => "post" do
      assert_select "input#payment_source_type_name", :name => "payment_source_type[name]"
      assert_select "textarea#payment_source_type_description", :name => "payment_source_type[description]"
    end
  end
end
