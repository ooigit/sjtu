require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :email => "MyString",
      :password_digest => "MyString",
      :sjtu_id => "MyString",
      :class_id => "MyString",
      :name => "MyString",
      :phone => "MyString",
      :grade => "MyString",
      :gender => "MyString",
      :hometown => "MyString",
      :nationality => "MyString",
      :political_status => "MyString",
      :identification_number => "MyString",
      :is_teacher => false,
      :is_ta => false,
      :is_student => false,
      :is_administrator => false
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_sjtu_id", :name => "user[sjtu_id]"
      assert_select "input#user_class_id", :name => "user[class_id]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_phone", :name => "user[phone]"
      assert_select "input#user_grade", :name => "user[grade]"
      assert_select "input#user_gender", :name => "user[gender]"
      assert_select "input#user_hometown", :name => "user[hometown]"
      assert_select "input#user_nationality", :name => "user[nationality]"
      assert_select "input#user_political_status", :name => "user[political_status]"
      assert_select "input#user_identification_number", :name => "user[identification_number]"
      assert_select "input#user_is_teacher", :name => "user[is_teacher]"
      assert_select "input#user_is_ta", :name => "user[is_ta]"
      assert_select "input#user_is_student", :name => "user[is_student]"
      assert_select "input#user_is_administrator", :name => "user[is_administrator]"
    end
  end
end
