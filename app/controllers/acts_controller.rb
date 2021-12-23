class ActsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @acts = Act.all
  end

  def new
    @act = act.new
  end

  def create
    Act.create!(content: act_params[:content], user_id: current_user.id)
  end
end
