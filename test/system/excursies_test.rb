require "application_system_test_case"

class ExcursiesTest < ApplicationSystemTestCase
  setup do
    @excursy = excursies(:one)
  end

  test "visiting the index" do
    visit excursies_url
    assert_selector "h1", text: "Excursies"
  end

  test "creating a Excursie" do
    visit excursies_url
    click_on "New Excursie"

    fill_in "Descriere", with: @excursy.descriere
    fill_in "Destinatie", with: @excursy.destinatie
    click_on "Create Excursie"

    assert_text "Excursie was successfully created"
    click_on "Back"
  end

  test "updating a Excursie" do
    visit excursies_url
    click_on "Edit", match: :first

    fill_in "Descriere", with: @excursy.descriere
    fill_in "Destinatie", with: @excursy.destinatie
    click_on "Update Excursie"

    assert_text "Excursie was successfully updated"
    click_on "Back"
  end

  test "destroying a Excursie" do
    visit excursies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Excursie was successfully destroyed"
  end
end
