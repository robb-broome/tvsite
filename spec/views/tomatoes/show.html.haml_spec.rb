require 'spec_helper'

describe "tomatoes/show" do
  before(:each) do
    @tomato = assign(:tomato, stub_model(Tomato,
      :kind => "Kind",
      :name => "Name",
      :body => "MyText",
      :uuid => "Uuid",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Kind/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Uuid/)
    rendered.should match(/false/)
  end
end
