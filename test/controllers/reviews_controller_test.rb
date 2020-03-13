require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should create review" do
    assert_difference('Review.count') do
      post movies_url, params: { review: { comment: @review.comment, rating: @review.rating } }
    end

    assert_redirected_to movies_url(Review.last)
  end

  test "should show review" do
    get movies_url(@review)
    assert_response :success
  end



end
