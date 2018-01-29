class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if session[:name].nil?
      render html: "<a href='/login'>Login</a>".html_safe
    else
      name = session[:name]
      render html: "hi, #{name}<br><a href='/logout'>Logout</a>".html_safe
    end
  end
end