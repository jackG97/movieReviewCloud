class SessionController < ApplicationController
before_action :set_sess

  def index
  end

  def ping
  end

  def pong
  end

  def reset
    reset_sessions
    @sess = new nil
  end

    private
    def set_sess
      if session[:sess]
        @sess = session[:sess]
      else
        @sess = Array.new
      end

      @sess.push(request.url)

      if @sess.count > 4
        @sess.shift
      end


      session[:sess] = @sess
  end
end
