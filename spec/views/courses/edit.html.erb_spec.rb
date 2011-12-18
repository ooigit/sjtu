require 'spec_helper'

describe "courses/edit.html.erb" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :code => "MyString",
      :name => "MyString",
      :year => "MyString",
      :semester => "MyString",
      :public => false,
      :open_for_apply => false,
      :finished => false
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path(@course), :method => "post" do
      assert_select "input#course_code", :name => "course[code]"
      assert_select "input#course_name", :name => "course[name]"
      assert_select "input#course_year", :name => "course[year]"
      assert_select "input#course_semester", :name => "course[semester]"
      assert_select "input#course_public", :name => "course[public]"
      assert_select "input#course_open_for_apply", :name => "course[open_for_apply]"
      assert_select "input#course_finished", :name => "course[finished]"
    end
  end
end
