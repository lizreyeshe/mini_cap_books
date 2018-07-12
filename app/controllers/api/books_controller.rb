class Api::BooksController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index 
    @books = Book.all

    if params[:search]
      @books = Book.where("name LIKE ?", "%#{params[:search]}%")
    end 

    #@books = @books.order(:id)
    @books = @books.order(:price ) 
    render "index.json.jbuilder"
  end 

  def show
    @book = Book.find_by(id: params[:id])
    render "show.json.jbuilder"
  end 

  def create 
    @book = Book.new(
      name: params[:name],
      author: params[:author],
      description: params[:description],
      price: params[:price],
      supplier: params[:supplier],
      stock: params[:stock],
      )

    if @book.save 
      render "show.json.jbuilder"
    else 
      render json: {errors: @book.errors.full_messages}, status: :unprocessable_entity
    end
  end 

  def update 
    @book = Book.find_by(id: params[:id])

    @book.name = params[:name] || @book.name
    @book.author = params[:author] ||@book.author 
    @book.description = params[:description] || @book.description
    @book.price = params[:price]|| @book.price 
    #@book.image = params[:image] || @book.image
    @book.stock = params[:stock]|| @book.stock

    if @book.save 
      render "show.json.jbuilder"
    else 
      render json: {errors: @book.errors.full_messages}, status: :unprocessable_entity
    end
  end 

  def destroy 
    @book = Book.find_by(id: params[:id])
    @book.destroy
    render json: {message: "Book deleted from library"}
  end 

end
