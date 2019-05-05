require 'test_helper'

class StackBookEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stack_book_event = stack_book_events(:one)
  end

  test "should get index" do
    get stack_book_events_url
    assert_response :success
  end

  test "should get new" do
    get new_stack_book_event_url
    assert_response :success
  end

  test "should create stack_book_event" do
    assert_difference('StackBookEvent.count') do
      post stack_book_events_url, params: { stack_book_event: { author: @stack_book_event.author, date: @stack_book_event.date, isbn: @stack_book_event.isbn, title: @stack_book_event.title } }
    end

    assert_redirected_to stack_book_event_url(StackBookEvent.last)
  end

  test "should show stack_book_event" do
    get stack_book_event_url(@stack_book_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_stack_book_event_url(@stack_book_event)
    assert_response :success
  end

  test "should update stack_book_event" do
    patch stack_book_event_url(@stack_book_event), params: { stack_book_event: { author: @stack_book_event.author, date: @stack_book_event.date, isbn: @stack_book_event.isbn, title: @stack_book_event.title } }
    assert_redirected_to stack_book_event_url(@stack_book_event)
  end

  test "should destroy stack_book_event" do
    assert_difference('StackBookEvent.count', -1) do
      delete stack_book_event_url(@stack_book_event)
    end

    assert_redirected_to stack_book_events_url
  end
end
