require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save movie with blanks" do
    movie = Movie.new
    assert_not movie.save, "Saved with no Input"
  end

  test "should prompt an error" do
    assert_raises(NameError) do
    undefined_variable
    assert true
  end
  end

  test "should not save movie without title" do
    movie = Movie.new
    assert_not movie.save, "Saved the movie with the title"
  end

  test "should save a movie" do
    movie = Movie.new(title: "Worlds End ", description: "Blah Blah", director: "Man", rating: 15, movie_length: 2)
    assert true
  end
end
