require 'spec_helper'

describe "quotes/show" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :body => "MyText",
      :reference => "Reference",
      :remark => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Reference/)
    rendered.should match(/MyText/)
  end
end
