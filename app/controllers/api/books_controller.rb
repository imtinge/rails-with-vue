class Api::BooksController < ApplicationController
    def show
        @book = Book.find(params[:id])
        render json: @book, except: %i(id created_at updated_at)
    end
end