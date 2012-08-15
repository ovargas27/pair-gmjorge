class UsersController < ApplicationController
  def index
    @Users = User.all
    respond_to { |format| format.html }
  end
end
