class HealthsController < ApplicationController
  before_action :set_health, only: [:edit, :update, :destroy]

  def index
    @health = Health.all
  end

  def new
    @health = params[:back] ? Health.new(health_params) : Health.new
  end

  def create
    @health = Health.new(health_params)
    if @health.save
      # 一覧画面へ遷移して"入力設定が完了しました！"とメッセージを表示します。
      redirect_to healths_path, notice: "入力設定が完了しました！"
    else
      # 入力フォームを再描画します。
      render 'new'
    end
  end

  def edit
  end

  def update
    if @health.update(health_params)
      redirect_to healths_path, notice: "入力データを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @health.destroy
    redirect_to healths_path, notice: "データを削除しました！"
  end

  def confirm
    @health = Health.new(health_params)
    render :new if @health.invalid?
  end

  private
    def health_params
      params.require(:health).permit(:name, :height, :weight, :content)
    end

    def set_health
      @health = Health.find(params[:id])
    end
end
