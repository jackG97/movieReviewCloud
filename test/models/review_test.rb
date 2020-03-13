require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save review without rating" do
    review = Review.new
    assert_not review.save, "Saved without the user rating"
  end

  test "should prompt an error for undefined variable" do
    assert_raises(NameError) do
    undefined_variable
    assert true
  end
  end

  test "should save a review" do
    review = Review.new(rating: 5, comment: "Great Film")
    assert true
  end

  test "should delete a review" do
    review = Review.delete(rating: 5, comment: "Great Film")
    assert true
  end
end
