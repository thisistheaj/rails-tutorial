class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # render json: @articles
  end

  def show
    @article = Article.find(params[:id])
    # render json: @article
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.save

    # render json: @article
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      # render json: {:status => 'success', :object => @article}
      redirect_to @article
    else
      # render json: {:status => 'failure', :object => @article}
      render 'edit'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
