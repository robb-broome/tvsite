require 'spec_helper'

describe "tomatoes/new" do
  before(:each) do
    assign(:tomato, stub_model(Tomato,
      :kind => "MyString",
      :name => "MyString",
      :body => "MyText",
      :uuid => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new tomato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tomatoes_path, :method => "post" do
      assert_select "input#tomato_kind", :name => "tomato[kind]"
      assert_select "input#tomato_name", :name => "tomato[name]"
      assert_select "textarea#tomato_body", :name => "tomato[body]"
      assert_select "input#tomato_uuid", :name => "tomato[uuid]"
      assert_select "input#tomato_active", :name => "tomato[active]"
    end
  end
end
