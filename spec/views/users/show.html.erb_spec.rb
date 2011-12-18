require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "Email",
      :password_digest => "Password Digest",
      :sjtu_id => "Sjtu",
      :class_id => "Class",
      :name => "Name",
      :phone => "Phone",
      :grade => "Grade",
      :gender => "Gender",
      :hometown => "Hometown",
      :nationality => "Nationality",
      :political_status => "Political Status",
      :identification_number => "Identification Number",
      :is_teacher => false,
      :is_ta => false,
      :is_student => false,
      :is_administrator => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password Digest/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sjtu/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Class/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hometown/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nationality/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Political Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Identification Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
