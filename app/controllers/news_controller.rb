class NewsController < ApplicationController
  # GET /news
  # GET /news.json
  def index
    @news = News.all
  end

  # GET /news/1
  # GET /news/1.json
  def show
    @news = News.find(params[:id])
  end
end
