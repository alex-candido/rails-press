class Admin::ProfileController < ApplicationController
  def index
    @posts = policy_scope(Post).paginate(page: params[:page])
  end
end
