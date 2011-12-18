require 'spec_helper'

describe "divisions/edit.html.erb" do
  before(:each) do
    @division = assign(:division, stub_model(Division,
      :course_id => 1,
      :parent_id => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit division form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => divisions_path(@division), :method => "post" do
      assert_select "input#division_course_id", :name => "division[course_id]"
      assert_select "input#division_parent_id", :name => "division[parent_id]"
      assert_select "input#division_description", :name => "division[description]"
    end
  end
end
