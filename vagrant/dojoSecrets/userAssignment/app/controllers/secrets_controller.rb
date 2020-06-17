class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    @user = current_user
    @secret = Secret.new(user: @user, content: params['content'])
      if @secret.valid?
        @secret.save
        redirect_to "/users/#{@user.id}"
      else
        flash[:errors] = ['Enter valid Secret']
        redirect_to "/users/#{@user.id}"
      end
    end

  def destroy
    @user = current_user
    secret = Secret.find(params[:id])
    if secret.user == @user
      secret.destroy
    end
    redirect_to "/secrets"

  end
end
