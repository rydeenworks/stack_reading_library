require "application_system_test_case"

class ReadBookEventsTest < ApplicationSystemTestCase
  setup do
    @read_book_event = read_book_events(:one)
  end

  test "visiting the index" do
    visit read_book_events_url
    assert_selector "h1", text: "Read Book Events"
  end

  test "creating a Read book event" do
    visit read_book_events_url
    click_on "New Read Book Event"

    click_on "Create Read book event"

    assert_text "Read book event was successfully created"
    click_on "Back"
  end

  test "updating a Read book event" do
    visit read_book_events_url
    click_on "Edit", match: :first

    click_on "Update Read book event"

    assert_text "Read book event was successfully updated"
    click_on "Back"
  end

  test "destroying a Read book event" do
    visit read_book_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Read book event was successfully destroyed"
  end
end
