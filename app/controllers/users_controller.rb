class UsersController < ApplicationController 
  # 一覧画面に対応するアクション
  def index
    @users = User.all
  end
  # 新規作成画面に対応するアクション
  def new
    @user = User.new
  end
  # 新規登録する為のアクション
  def create
   User.create(user_params)
  end 

  # 編集画面に対応するアクション
  def edit
    @user = User.find(params[:id])
  end

# 更新を行う為のアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  # 削除をする為のアクション
  def destroy
    user = User.find(params[:id])
    user.delete
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end