require 'rails_helper'

RSpec.feature "User sees all categories" do
  scenario "a user sees all the categories" do
    category1 = Category.create(title: "Finance")
    category2 = Category.create(title: "Engineering")
    visit categories_path

    expect(page).to have_content("Finance")
    expect(page).to have_content("Engineering")
  end

end
