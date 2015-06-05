require 'rails_helper'

RSpec.feature "Student Records Attendance", type: :feature do

  before do
    visit "/"
  end

  scenario "happy path, recording student attendance" do
    save_and_open_page
    Fabricate(:student, name: "Molly Black")
    Fabricate(:student, name: "Ayumi Bennett")
    click_on "Record Attendance"
    current_path.should == new_attendance_path
    save_and_open_page
    select "Molly Black", from: "Students"
    click_on "Submit"
    page.should have_css(".notice", "Molly Black attended class today.")
  end

end
