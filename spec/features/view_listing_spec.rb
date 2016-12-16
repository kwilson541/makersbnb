require 'spec_helper'

RSpec.feature 'Viewing a individial listing', :type => :feature do

  include WebHelpers

  scenario 'user can visit page to see a listing' do
    sign_up_owner
    log_in_owner
    create_listing
    visit("/listings")
    click_link "Peacock Paradise Private Villa"
    expect(page.status_code).to eq 200
    expect(page).to have_content("My home has peacocks and a pool.")
    expect(page).to have_content("50")
    expect(page).to have_content("London")
    expect(page).to have_content("United Kingdom")
    expect(page).to have_content("2016-01-01")
    expect(page).to have_content("2016-02-01")
  end

  scenario 'user can see a input form to show only available property' do
    visit("/listings")
    expect(page).to have_button("Show Available Property")
  end

  scenario 'user can see only available property' do
    sign_up_owner
    log_in_owner
    create_listing
    log_out
    sign_up_renter
    log_in_renter
    visit("/listings")
    fill_in :available_from, with: "2016-01-02"
    fill_in :available_until, with: "2016-01-05"
    expect(page).to have_content("Peacock Paradise Private Villa")
  end

  scenario 'user cannot see unavailable property' do
    sign_up_owner
    log_in_owner
    create_listing
    log_out
    sign_up_renter
    log_in_renter
    visit("/listings")
    fill_in :available_from, with: "2016-02-01"
    fill_in :available_until, with: "2016-02-05"
    click_button "Show Available Property"
    expect(page).not_to have_content("Peacock Paradise Private Villa")
  end

end
