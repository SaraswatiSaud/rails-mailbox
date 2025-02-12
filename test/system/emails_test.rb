require "application_system_test_case"

class EmailsTest < ApplicationSystemTestCase
  setup do
    @email = emails(:one)
  end

  test "visiting the index" do
    visit emails_url
    assert_selector "h1", text: "Emails"
  end

  test "creating a Email" do
    visit emails_url
    click_on "New Email"

    fill_in "Content", with: @email.content
    fill_in "From", with: @email.from
    fill_in "Settings", with: @email.settings
    fill_in "Subject", with: @email.subject
    fill_in "To", with: @email.to
    click_on "Create Email"

    assert_text "Email was successfully created"
    click_on "Back"
  end

  test "updating a Email" do
    visit emails_url
    click_on "Edit", match: :first

    fill_in "Content", with: @email.content
    fill_in "From", with: @email.from
    fill_in "Settings", with: @email.settings
    fill_in "Subject", with: @email.subject
    fill_in "To", with: @email.to
    click_on "Update Email"

    assert_text "Email was successfully updated"
    click_on "Back"
  end

  test "destroying a Email" do
    visit emails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Email was successfully destroyed"
  end
end
