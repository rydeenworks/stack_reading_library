require 'test_helper'

class BookShelvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_shelf = book_shelves(:one)
  end

  test "should get index" do
    get book_shelves_url
    assert_response :success
  end

  test "should get new" do
    get new_book_shelf_url
    assert_response :success
  end

  test "should create book_shelf" do
    assert_difference('BookShelf.count') do
      post book_shelves_url, params: { book_shelf: { note: @book_shelf.note, title: @book_shelf.title, user_id: @book_shelf.user_id } }
    end

    assert_redirected_to book_shelf_url(BookShelf.last)
  end

  test "should show book_shelf" do
    get book_shelf_url(@book_shelf)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_shelf_url(@book_shelf)
    assert_response :success
  end

  test "should update book_shelf" do
    patch book_shelf_url(@book_shelf), params: { book_shelf: { note: @book_shelf.note, title: @book_shelf.title, user_id: @book_shelf.user_id } }
    assert_redirected_to book_shelf_url(@book_shelf)
  end

  test "should destroy book_shelf" do
    assert_difference('BookShelf.count', -1) do
      delete book_shelf_url(@book_shelf)
    end

    assert_redirected_to book_shelves_url
  end
end
