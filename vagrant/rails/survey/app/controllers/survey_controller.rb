class SurveyController < ApplicationController
    def index
        render 'index'
    end

    def create
        session[:name] = params[:name]
        session[:location] = params[:location]
        session[:language] = params[:language]
        session[:comment] = params[:comment]

        if session[:count]
            session[:count] += 1
        else
            session[:count] = 1
        end

        flash[:count] = session[:count]
        redirect_to '/result'
    end

    def result
        render 'result'
    end
end
