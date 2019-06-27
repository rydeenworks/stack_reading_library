require 'test_helper'

class ReadBookEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @read_book_event = read_book_events(:one)
  end

  test "should get index" do
    get read_book_events_url
    assert_response :success
  end

  test "should get new" do
    get new_read_book_event_url
    assert_response :success
  end

  test "should create read_book_event" do
    assert_difference('ReadBookEvent.count') do
      post read_book_events_url, params: { read_book_event: {  } }
    end

    assert_redirected_to read_book_event_url(ReadBookEvent.last)
  end

  test "should show read_book_event" do
    get read_book_event_url(@read_book_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_read_book_event_url(@read_book_event)
    assert_response :success
  end

  test "should update read_book_event" do
    patch read_book_event_url(@read_book_event), params: { read_book_event: {  } }
    assert_redirected_to read_book_event_url(@read_book_event)
  end

  test "should destroy read_book_event" do
    assert_difference('ReadBookEvent.count', -1) do
      delete read_book_event_url(@read_book_event)
    end

    assert_redirected_to read_book_events_url
  end
end
