class TimeController < ApplicationController
  def index
    @date = Time.now.strftime("%b %d, %Y")
  	@time = Time.now.strftime("%H:%M %p")
    render "index"
  end
end
