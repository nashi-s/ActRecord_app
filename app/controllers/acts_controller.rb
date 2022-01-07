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

  def show
    @act = Act.find(params[:id])
  end


  private

  def act_params
    params.require(:act).permit(:content)
  end


  def update
    @act.update!(act_params)
    redirect_to @act
  end

  # ***** 以下を追加 *****
  def set_act
    # 「自分の投稿」の中から URL の :id に対応する投稿を探す
    # 「他人の投稿」の場合はエラーを出す
    @act = current_user.acts.find_by(id: params[:id])
    redirect_to root_path, alert: "権限がありません" if @act.nil?
  end
end
