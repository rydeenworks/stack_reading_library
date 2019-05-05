require "application_system_test_case"

class StackBookEventsTest < ApplicationSystemTestCase
  setup do
    @stack_book_event = stack_book_events(:one)
  end

  test "visiting the index" do
    visit stack_book_events_url
    assert_selector "h1", text: "Stack Book Events"
  end

  test "creating a Stack book event" do
    visit stack_book_events_url
    click_on "New Stack Book Event"

    fill_in "Author", with: @stack_book_event.author
    fill_in "Date", with: @stack_book_event.date
    fill_in "Isbn", with: @stack_book_event.isbn
    fill_in "Title", with: @stack_book_event.title
    click_on "Create Stack book event"

    assert_text "Stack book event was successfully created"
    click_on "Back"
  end

  test "updating a Stack book event" do
    visit stack_book_events_url
    click_on "Edit", match: :first

    fill_in "Author", with: @stack_book_event.author
    fill_in "Date", with: @stack_book_event.date
    fill_in "Isbn", with: @stack_book_event.isbn
    fill_in "Title", with: @stack_book_event.title
    click_on "Update Stack book event"

    assert_text "Stack book event was successfully updated"
    click_on "Back"
  end

  test "destroying a Stack book event" do
    visit stack_book_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stack book event was successfully destroyed"
  end
end
