require 'rails_helper'

describe "User deletes existing company" do
  scenario "a user can delete a company" do
    company = Company.create(name: "Arrow")
    visit companies_path

    within(".company_#{company.id}") do
      click_link "delete company"
    end

    expect(page).to have_content("Arrow was successfully deleted!")
  end
end
