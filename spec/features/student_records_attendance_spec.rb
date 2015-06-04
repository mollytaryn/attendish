require 'rails_helper'

RSpec.feature "StudentRecordsAttendance", type: :feature do
  scenario "happy path, recording student attendance" do
    Fabricate(:student, name: "Molly Black")
    Fabricate(:student, name: "Ayumi Bennett")
    select "Molly Black", from: "Students"
    click_on "Submit"
    page.should have_css(".notice", "Molly Black attended class today.")
  end

end
