class MainController < ApplicationController
  def index
    @news = News.all.limit(3)
  end

  def contacts

  end
end
