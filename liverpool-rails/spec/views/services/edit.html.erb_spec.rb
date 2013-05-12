require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :name => "MyString",
      :description => "MyString",
      :type => "",
      :technology => "MyString"
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path(@service), :method => "post" do
      assert_select "input#service_name", :name => "service[name]"
      assert_select "input#service_description", :name => "service[description]"
      assert_select "input#service_type", :name => "service[type]"
      assert_select "input#service_technology", :name => "service[technology]"
    end
  end
end
