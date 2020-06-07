class NinjasController < ApplicationController
  def index
    unless 
      session[:gold]
      session[:gold] = 0
    end

    unless
      session[:activities]
      session[:activities] = []
    end

    @activities = session[:activities]
    puts @activities
  end

  def earngold
    if params[:location] == 'Farm'
      new_gold = Random.rand(10..20)
      session[:gold] += new_gold
    elsif
      params[:location] == 'Cave'
      new_gold = Random.rand(5..10)
      session[:gold] += new_gold
    elsif
      params[:location] == 'House'
      new_gold = Random.rand(2..5)
      session[:gold] += new_gold
    elsif
      params[:location] == 'Casino'
      new_gold = Random.rand(-50..50)
      session[:gold] += new_gold
    end

      if new_gold > 0
      session[:activities] << "You find gold at #{params[:location]} and earned #{new_gold} golds"
      else
      session[:activities] << "You find gold at #{params[:location]} and lost #{new_gold} golds"
      end
      redirect_to '/'
  end
end
