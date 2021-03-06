require 'rails_helper'

describe "User sees one company" do
  scenario "a user sees a company" do
    company = FactoryGirl.create(:company)
    company.jobs.create!(title: "Developer", level_of_interest: 90, city: "Denver")

    visit company_path(company)

    expect(current_path).to eq("/companies/#{company.id}/jobs")
    expect(page).to have_content(company.name)
    expect(page).to have_content("Developer")
  end
end
