class HomeController < ApplicationController
  def set_cookie
    cookies.permanent.signed[:first_name] = "Jack"
    cookies.permanent.signed[:surname] = "Gallaher"
    cookies.permanent.signed[:email] = "jackgallaher36@gmail.com"
  end

  def show_cookie
    @first_name = cookies[:first_name]
    @surname = cookies[:surname]
    @email = cookies[:email]
  end

  def delete_cookie
    cookies.delete :first_name
    cookies.delete :surname
    cookies.delete :email
  end
end
