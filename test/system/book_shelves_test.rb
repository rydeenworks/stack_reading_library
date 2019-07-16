require "application_system_test_case"

class BookShelvesTest < ApplicationSystemTestCase
  setup do
    @book_shelf = book_shelves(:one)
  end

  test "visiting the index" do
    visit book_shelves_url
    assert_selector "h1", text: "Book Shelves"
  end

  test "creating a Book shelf" do
    visit book_shelves_url
    click_on "New Book Shelf"

    fill_in "Note", with: @book_shelf.note
    fill_in "Title", with: @book_shelf.title
    fill_in "User", with: @book_shelf.user_id
    click_on "Create Book shelf"

    assert_text "Book shelf was successfully created"
    click_on "Back"
  end

  test "updating a Book shelf" do
    visit book_shelves_url
    click_on "Edit", match: :first

    fill_in "Note", with: @book_shelf.note
    fill_in "Title", with: @book_shelf.title
    fill_in "User", with: @book_shelf.user_id
    click_on "Update Book shelf"

    assert_text "Book shelf was successfully updated"
    click_on "Back"
  end

  test "destroying a Book shelf" do
    visit book_shelves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book shelf was successfully destroyed"
  end
end
