require 'rails_helper'

RSpec.feature "Student Records Attendance", type: :feature do

  before do
    visit "/"
  end

  scenario "happy path, recording student attendance" do
    Fabricate(:student, name: "Molly Black")
    Fabricate(:student, name: "Ayumi Bennett")
    click_on "Record Attendance"
    current_path.should == new_attendances_path
    select "Molly Black", from: "Student"
    check "Present?"
    click_on "Submit"
    page.should have_css(".notice", "Molly Black attended class today.")
  end

end
