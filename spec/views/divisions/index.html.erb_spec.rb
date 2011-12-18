require 'spec_helper'

describe "divisions/index.html.erb" do
  before(:each) do
    assign(:divisions, [
      stub_model(Division,
        :course_id => 1,
        :parent_id => 1,
        :description => "Description"
      ),
      stub_model(Division,
        :course_id => 1,
        :parent_id => 1,
        :description => "Description"
      )
    ])
  end

  it "renders a list of divisions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
