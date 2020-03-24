require 'test_helper'

class MovieTestInt < ActionDispatch::IntegrationTest
  fixtures :all

  test 'try to add a new movie' do
    @movie = movies(:one)
    get '/movies/new'
    assert_response :success

    post movies_url, params:{movie: {title: @movie.title}}
    assert_equal '/movies', path
    assert_select 'li', "Description can't be blank"
    assert_select 'li', "Rating can't be blank"
end

  test 'try to add an image type' do
    @movie = movies(:one)
    get '/movies/new'
    assert_response :success

    post movies_url, params: {movie: {image: @movie.image}}
    assert_equal '/movies', path
    assert_select 'li', "Only Jpg images can be uploaded, i.e. No "
    assert_select 'li', "Image has contents that are not what they are reported to be"
  end


end
