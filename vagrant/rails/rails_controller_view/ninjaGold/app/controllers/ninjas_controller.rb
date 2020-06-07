class NinjasController < ApplicationController
  def index
    unless 
      session[:gold] = 0
    end

    unless
      session[:activities] = []
    end
    @activities = session[:activities]
  end

  def earngold
    if params[:location] == 'Farm'
      new_gold = rand(10..20)
      session[:gold] += new_gold
    elsif
      params[:location] == 'Cave'
      new_gold = rand(5..10)
      session[:gold] += new_gold
    elsif
      params[:location] == 'House'
      new_gold = rand(2..5)
      session[:gold] += new_gold
    elsif
      params[:location] == 'Casino'
      new_gold = rand(-50..50)
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
