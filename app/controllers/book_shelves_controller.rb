class BookShelvesController < ApplicationController
  before_action :set_book_shelf, only: [:show, :edit, :update, :destroy]

  def index
    @book_shelves = BookShelf.all
  end

  def show
  end

  def new
    @book_shelf = BookShelf.new
  end

  def edit
  end

  def create
    @book_shelf = BookShelf.new(book_shelf_params)
    @book_shelf.user_id = current_user.id

    respond_to do |format|
      if @book_shelf.save
        format.html { redirect_to @book_shelf, notice: '本棚を作成しました' }
        format.json { render :show, status: :created, location: @book_shelf }
      else
        format.html { render :new }
        format.json { render json: @book_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book_shelf.update(book_shelf_params)
        format.html { redirect_to @book_shelf, notice: 'Book shelf was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_shelf }
      else
        format.html { render :edit }
        format.json { render json: @book_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book_shelf.destroy
    respond_to do |format|
      format.html { redirect_to book_shelves_url, notice: 'Book shelf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_book_shelf
      @book_shelf = BookShelf.find(params[:id])
    end

    def book_shelf_params
      params.require(:book_shelf).permit(:title, :note)
    end
end
