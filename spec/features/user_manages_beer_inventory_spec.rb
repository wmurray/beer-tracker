require "rails_helper"

RSpec.feature "user manages beer inventory" do
  scenario "user adds a beer to their inventory" do
    visit new_beer_path

    visit "/beers/new"
    fill_in "Name", with: "Stingo"
    fill_in "Company", with: "Boulevard"
    #select "ABV", from: "Category"
    fill_in "Count", with: 6
    #select "750 ml", from: "Size"
    click_on "Save Beer"

    expect(page).to have_content "Stingo added to your beer inventory"
  end
end
