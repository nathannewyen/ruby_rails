class NinjasController < ApplicationController
  def init
    session[:gold] = 0
    render 'index'
  end

  def index
    session[:activities] = Array.new() if !session[:activities]
    session[:activities].push(session[:message])
  end

  def farm
    earn_gold = rand(10..20)
    session[:gold] += earn_gold
    session[:message] = "You find gold at Farm and earned #{earn_gold} golds"

    redirect_to '/'
  end

  def cave
    earn_gold = rand(5..10)
    session[:gold] += earn_gold
    session[:message] = "You find gold at Cave and earned #{earn_gold} golds"

    redirect_to '/'
  end

  def house
    earn_gold = rand(2..5)
    session[:gold] += earn_gold
    session[:message] = "You find gold at House and earned #{earn_gold} golds"

    redirect_to '/'
  end

  def casino
    earn_gold = rand(-50..50)
    session[:gold] += earn_gold
    if earn_gold < 0
      session[:message] = "You went to Casino and lost #{earn_gold} golds"
    else 
      session[:message] = "You went to Casino and earn #{earn_gold} golds"
    end

    redirect_to '/'
  end
end
