class DojoControllersController < ApplicationController
  def index
    @all_dojo = Dojo.all
  end
end
