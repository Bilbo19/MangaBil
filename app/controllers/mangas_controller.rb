class MangasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @mangas = Manga.all
  end

  def show
    @manga = Manga.find(params[:id])
  end

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.new(manga_params)
    @manga.save
    redirect_to manga_path(@manga)
  end

  def edit
    @manga = Manga.find(params[:id])
  end

  def update
    @manga = Manga.find(params[:id])
    @manga.update(manga_params)
    redirect_to manga_path(@manga)
  end

  def destroy
    @manga = Manga.find(params[:id])
    @manga.destroy
    redirect_to mangas_path
  end

  private

  def manga_params
    params.require(:manga).permit(:title, :author, :summary, :photo)
  end
end
