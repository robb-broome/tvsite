require 'spec_helper'

describe "tomatoes/index" do
  before(:each) do
    assign(:tomatoes, [
      stub_model(Tomato,
        :kind => "Kind",
        :name => "Name",
        :body => "MyText",
        :uuid => "Uuid",
        :active => false
      ),
      stub_model(Tomato,
        :kind => "Kind",
        :name => "Name",
        :body => "MyText",
        :uuid => "Uuid",
        :active => false
      )
    ])
  end

  it "renders a list of tomatoes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
