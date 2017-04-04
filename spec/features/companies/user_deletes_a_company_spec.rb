require 'rails_helper'

describe "User deletes existing company" do
  scenario "a user can delete a company" do
    company = Company.create(name: "Amazon")
    visit companies_path

    within(".company_#{company.id}") do
      click_link "delete company"
    end

    expect(page).to have_content("Amazon was successfully deleted!")
  end
end
