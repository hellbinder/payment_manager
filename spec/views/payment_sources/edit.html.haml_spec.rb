require 'spec_helper'

describe "payment_sources/edit" do
  before(:each) do
    @payment_source = assign(:payment_source, stub_model(PaymentSource,
      :name => "MyString",
      :payment_source_type_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit payment_source form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_sources_path(@payment_source), :method => "post" do
      assert_select "input#payment_source_name", :name => "payment_source[name]"
      assert_select "input#payment_source_payment_source_type_id", :name => "payment_source[payment_source_type_id]"
      assert_select "textarea#payment_source_description", :name => "payment_source[description]"
    end
  end
end
