require 'rails_helper'

describe "User can create a category" do
  scenario "a user can add a new category" do

    visit new_category_path

    expect(current_path).to eq(new_category_path)
    expect(page).to have_content("Add a New Category")
  end
end
