require 'rails_helper'

RSpec.feature "User sees all tags associated with a job" do
  scenario "when visiting a specific job page" do
    company = FactoryGirl.create(:company)
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    tag1 = job.tags.create!(name: "Love it")
    tag2 = job.tags.create!(name: "Hate it")

    visit company_job_path(company, job)
    expect(page).to have_content("Love it")
    expect(page).to have_content("Hate it")
  end
end
# as a user
# when i visit a specific job page
# i see the name of all tags associated wtih the job
