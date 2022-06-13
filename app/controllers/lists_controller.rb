class ListsController < ApplicationController
  before_action :find_list, only: [:show, :destroy]

  def index
    @lists = List.all
    @list = List.new
  end

  def show
  @bookmark = Bookmark.new
  end

  def create
    @lists = List.all
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path(@lists)
    else
      render "index"
    end
  end

  def destroy
    find_list
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def find_list
    @list = List.find(params[:id])
  end

end
