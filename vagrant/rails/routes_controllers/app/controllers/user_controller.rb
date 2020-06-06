class UserController < ApplicationController
  def index
    render text: "What do you want me to say???"
  end

  def say
    render text: "Hello Coding Dojo"
  end

  def sayHello
    render text: "Saying Hello"
  end

  def sayHelloJoe
    render text: "Saying Hello Joe!"
  end

  def times 
    session[:times] == 0

    @times = session[:times] += 1

    render text: "You have visited the page #{session[:times]} time(s)"
  end

  def timesRestart
    session[:times] = nil
    render text: "Destroy the session!"
  end
end
