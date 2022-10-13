class ArticlesController < ApplicationController
  before_action :set_params_id, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.save!
    redirect_to article_path(@article)
  end

  def edit

  end

  def show
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def reviews
    @reviews = @article.reviews
  end

  private

  def set_params_id
    @article = Article.find(params[:id])
  end

  def article_params
    params.required(:article).permit(:title, :body, :user_id)
  end
end
