class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      flash[:success] = 'list が正常に投稿されました'
      redirect_to @list
    else
      flash.now[:danger] = 'list が投稿されませんでした'
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    flash[:success] = 'list は正常に削除されました'
    redirect_to lists_url
  end
  
  private

  # Strong Parameter
  def list_params
    params.require(:list).permit(:content)
  end
end
